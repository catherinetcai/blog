+++
date = 2016-04-19T22:12:00Z
draft = false
title = "TIL - Java Optionals"
aliases = ["/blog/2016/4/21/til-java-optionals"]
categories = ["avsnitt"]
+++

I came across Java Optionals whilst dealing with streams and the .findFirst method. Methods like findFirst() and findAny() don't return the type of what you're applying it to, unfortunately. Instead, it returns an object of the Optional class.&nbsp;
Optionals are container objects that may or may not contain a value. Essentially, I learned to fetch the value by calling a get(), or simply returning a orElse(what you want to return) here, if the Optional doesn't contain a value.
Very handy.

