---
title: "Okta OpenID JWT Validation"
date: 2017-11-23T21:33:59-08:00
draft: false
aliases:  ["/blog/2017/11/23/til-okta-openid-jwt"]
categories: ["til", "jwt", "okta"]
---

At work I've been implementing JWT encoding/decoding/validation for an auth service written in Ruby to handle both [Okta OpenID Connect](https://developer.okta.com/docs/api/resources/oidc.html). The workflow is fairly straight forward. Once you log in via the Okta web portal, Okta will pass back an ID Token, which is a Base64 encoded JWT. Once decoded using Ruby's [Base64 urlsafe_decode64 method](https://ruby-doc.org/stdlib-2.3.1/libdoc/base64/rdoc/Base64.html#method-i-urlsafe_decode64), the contents look something like this (taken from [here](https://github.com/marlonbernardes/okta-openid-examples)):
```
# Header:
{
  "alg": "RS256",
  "kid": "mLi1UdXCkm90Klq9ZJy5p6rAZx5_X2GQee2E_Lj3eUs"
}
# Payload:
{
  "sub": "00a1b33cde4fH5ij60k7",
  "email": "myuser@mycompany.com",
  "ver": 1,
  "iss": "https://mycompany.oktapreview.com",
  "aud": "kd8a77HLDmasST",
  "iat": 1459450284,
  "exp": 1459453884,
  "jti": "jGbbnTCbwWqsG_OK53TR",
  "amr": [
    "pwd"
  ],
  "idp": "00o1eig8yABCDEFGHIJKL",
  "updated_at": 0,
  "email_verified": true,
  "auth_time": 1459450284,
  "groups": [
    "Everyone",
    "custom-user-group",
    "another-user-group"
  ]
}
```
Typically, with the signing secret, you can validate the token easily via the [ruby-jwt](https://github.com/jwt/ruby-jwt) library. However, Okta rotates its keys, so you have to call a ["Get Keys"](https://developer.okta.com/docs/api/resources/oidc.html#get-keys) endpoint to get back the public keys that Okta used to sign the token to validate it. Previously, Okta provided a Base64 encoded X5C certificate that could be used directly with the ruby-jwt library to decode the token. 

However, they've since removed the X5C token and now provide a payload that looks like so:
```
{
  "keys": [
    {
      "alg": "RS256",
      "e": "AQAB",
      "n": "iKqiD4cr7FZKm6f05K4r-GQOvjRqjOeFmOho9V7SAXYwCyJluaGBLVvDWO1XlduPLOrsG_Wgs67SOG5qeLPR8T1zDK4bfJAo1Tvbw
            YeTwVSfd_0mzRq8WaVc_2JtEK7J-4Z0MdVm_dJmcMHVfDziCRohSZthN__WM2NwGnbewWnla0wpEsU3QMZ05_OxvbBdQZaDUsNSx4
            6is29eCdYwhkAfFd_cFRq3DixLEYUsRwmOqwABwwDjBTNvgZOomrtD8BRFWSTlwsbrNZtJMYU33wuLO9ynFkZnY6qRKVHr3YToIrq
            NBXw0RWCheTouQ-snfAB6wcE2WDN3N5z760ejqQ",
      "kid": "U5R8cHbGw445Qbq8zVO1PcCpXL8yG6IcovVa3laCoxM",
      "kty": "RSA",
      "use": "sig"
    }
}
```
Note the distinct lack of a X5C certificate, because including that would just make life too easy. 

Essentially, you're supposed to match the kid (the key ID) found in the JWT header and match it to the matching kid found in the JWKs that Okta provides you, and then validate your JWT token using some sort of black magic, since they no longer provide the X5C cert.

As a cryptonoob, I had no idea what the provided 'e' and 'n' were for. It took me an embarrassingly long time (and a lot of Google searches) to figure out that they were the Base64 encoded representations of the exponent (the e value) and the modulus (the n value) used for a RSA public key. With that knowledge in mind, I took to Base64 decoding them.

I cracked open irb and Base64 decoded AQAB, which results in something like this.
```
irb(main):002:0> Base64.decode64("AQAB")
=> "\x01\x00\x01"
```
I was expecting that to come back as a string representation of an integer, but instead got back a string of bytes. I then set off to figure out how to convert a string of bytes to an integer and landed on Ruby's [String unpack](https://ruby-doc.org/core-2.4.2/String.html#method-i-unpack) method. Not knowing any better, I decided to unpack it using the C* directive, which unpacks the string of bytes into an array of 8-bit unsigned chars.
```
irb(main):004:0> "\x01\x00\x01".unpack("C*")
=> [1, 0, 1]
```
Hmm. Okay. At this point, I knew something looked fishy and weird. I decided to Google what AQAB was supposed to represent in Base64 encoding, and found that it was a representation of 65537, which is a common prime number used in RSA public keys. I had a direction now for where to go... figuring out what sort of fun way would convert to 65537. "AQAB" => "\x01\x00\x01" => ??? => 65537.

I struggled around with trying to unpack this string Ruby a little bit longer (to no avail), and on the recommendation of a mentor and friend, swapped to trying this out in the interactive Python3 environment. After a little more research, it turns out Python3 has a really simple solution to this via [int.from_bytes](https://docs.python.org/3/library/stdtypes.html#int.from_bytes). After a little bit of playing around, I figured it out:
```
int.from_bytes(b'\x01\x00\x01', byteorder='big', signed=False)
65537 
```
Essentially, that got me on the track of knowing that this was an big endian, unsigned integer. Since unsigned int16s only hold up to 2^16 values, or [0-65535](https://en.wikipedia.org/wiki/16-bit), likely it's a 32-bit representation. Great! That means I should be able to use the equivalent in Ruby's string unpack method, which is via the N directive.
```
irb(main):005:0> "\x01\x00\x01".unpack("N*")
=> []
irb(main):006:0> "\x01\x00\x01".unpack("N")
=> [nil]
```
This was truly a WITAF moment for me. I was stumped. Trying this with any combo of the big endian directives that int8, int16, int64 all resulted in duds.

I stumbled across this [Stack Overflow post](https://stackoverflow.com/questions/17014268/how-do-i-unpack-a-number-larger-than-64-bits-in-ruby) that gave me a solution that worked. Essentially, the question was about unpacking a number that's bigger than 64-bits, which would involve combining 8-bit values into BigNum. However, I also learned that as of Ruby 2.4.0, BigNum and FixNum were [merged into Integer](http://blog.bigbinary.com/2016/11/18/ruby-2-4-unifies-fixnum-and-bignum-into-integer.html)
```
irb(main):001:0> "\x01\x00\x01".unpack("C*").inject(0) do |sum, (byte, index)|
irb(main):002:1*   sum * 256 + byte
irb(main):003:1> end
=> 65537
```
I have no idea if this is the desired behavior for Strings.unpack or not, especially given that 65537 should fit into a uint32. (There's likely a Rubyist out there that's probably screaming at their screen right now because there's probably an easy solution to this that I just haven't found.)

Anyway, I applied the same on the modulus (n) value. Then, you should be able to derive the public key with something similar to the following:
```
def rsa_public_key(e, n)
  rsa_key = OpenSSL::PKey::RSA.new
  rsa_key.e = OpenSSL::BN.new(base64_to_int(e))
  rsa_key.n = OpenSSL::BN.new(base64_to_int(n))
  rsa_key.public_key
end
```
Then, you can validate the JWT using the public key using ruby-jwt:
```
JWT.decode(
  token,
  public_key, #derive this from the rsa_public_key method
  true,
  algorithm: 'RS256'
)
```
