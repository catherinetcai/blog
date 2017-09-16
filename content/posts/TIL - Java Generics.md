+++
date = 2016-02-18T07:17:00Z
draft = false
title = "TIL - Java Generics"
aliases = ["/blog/2016/2/22/til-java-generics"]
categories = ["avsnitt"]
+++

Java Generics essentially allow you to code with objects as parameters without having things completely blow up in your face.&nbsp;
So how do they work? The syntax for them is as follows:
T, which stands for type, is one of the many parameters for generics. To instantiate box, you would have to declare it as such:
This now means that you can instantiate any object type of Box with type safety.
Kind of an interesting take on allowing objects as parameters in Java. I'm still too used to duck typing and honestly prefer it over to type-checking and type safety.

