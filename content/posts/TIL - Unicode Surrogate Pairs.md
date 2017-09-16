+++
date = 2016-03-29T01:47:02Z
draft = false
title = "TIL - Unicode Surrogate Pairs"
aliases = ["/blog/2016/3/28/til-unicode-surrogate-pairs"]
categories = ["avsnitt"]
+++

Today, I had to work on a story dealing with emojis for work. Essentially, it had to deal with parsing emojis and flagging certain ones as banned.
I wasn't sure what format the emojis were going to come in as in order to test them against the code. I was expecting something along these lines: "U+1F4B0" or "\xF0\x9F\x92\xB0" (for the curious, the emoji is 💰). In any case, I got something that came back as u\D83DDCB0. Cue my confusion.
After looking it up, I stumbled across . This [article](http://www.ibm.com/developerworks/library/j-unicode/)&nbsp;explains the design for the use of 16-bit Unicode values. The first value is the high surrogate and the second value is the low surrogate.&nbsp;
I'm not going to delve into the details, because I certainly didn't need to... but it was just a good TIL to understand what the heck was going on when I was getting back weird strings instead of the Unicode I was expecting.

