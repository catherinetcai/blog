+++
date = 2016-02-16T05:09:03Z
draft = false
title = "TIL - Default Methods"
aliases = ["/blog/2016/2/15/til-default-methods"]
categories = ["avsnitt"]
+++

I know I missed TILs in the last two days. I think I've resolved myself to just doing TILs during the weekdays.
--
Interfaces are part of Java OOP and inheritance. Java interfaces have the signatures of methods (essentially empty method declarations.) They're not allowed to have method implementations, except in the case of default or static methods.
Default methods have a syntax like so:
The main reason to use default methods, as far as I can tell, is to update interfaces. You can't simply add a new method to an interface, as it'll break any implementations of your interface. Default methods make it so that any classes that implement the interface will not break, as default methods don't have to even be referenced in the class that implements the original interface.&nbsp;
 

