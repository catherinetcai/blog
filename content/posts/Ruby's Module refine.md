+++
date = 2016-06-01T20:20:20Z
draft = false
title = "TIL - Ruby's Module refine"
aliases = ["/blog/2016/6/1/til-rubys-module-refine"]
categories = ["avsnitt"]
+++

.
--
I was reading Sandi Metz's newsletter about her solution to converting Arabic to Roman numerals. I noticed that she used the #refine method in her Modules. Apparently this was a feature that was introduced in Ruby 2.0 that I just never was aware of. To be fair, I've never jumped too far into the world of Ruby monkey patching.
Example/use:
Refine enhances the class String in the Foo module. Now, if you were to use Foo in a class called Bar, and call the hello, it'll be able to use "Hello, World". If you directly called it saying String.new.say... you'd get a NoMethodError back because it was not defined on the String class itself.

