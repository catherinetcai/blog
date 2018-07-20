+++
date = 2016-04-22T16:30:00Z
draft = false
title = "TIL - Inheriting from Modules in Ruby"
aliases = ["/blog/2016/4/25/til-inheriting-from-modules-in-ruby"]
categories = ["avsnitt"]
+++

Ruby has some weird tricks and quirks, especially when it comes to modules and classes.
You can't include a class as a module, but you can do something like this:
Wat?
Apparently, you can't include Foo itself (so, class Bar ; include Foo is a big no-no). The implementation of modules makes it so that it'll throw an error if you attempt to include something of class Class. However, declaring a Foo.new makes it so that Bar would be including something of class Foo, meaning that it will not throw. This means that module-like behavior can be implemented with a subclass of Module &nbsp;a class.

