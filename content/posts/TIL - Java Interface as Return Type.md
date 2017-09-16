+++
date = 2016-05-16T18:15:00Z
draft = false
title = "TIL - Java Interface as Return Type"
aliases = ["/blog/2016/5/17/til-java-interface-as-return-type"]
categories = ["avsnitt"]
+++

I learned a bit about Java Interfaces by reviewing the Oracle Java 8 documentation. I didn't realize that interfaces could be used to declare a return type if you're not sure of the type you're going to get back, but you know for a fact that it's going to implement an interface.
So you can apparently declare something like so:

