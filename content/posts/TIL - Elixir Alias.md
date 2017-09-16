+++
date = 2016-04-02T06:50:00Z
draft = false
title = "TIL - Elixir Alias"
aliases = ["/blog/2016/4/10/til-elixir-alias"]
categories = ["avsnitt"]
+++

I'm working through Phoenix tutorials to apply my Elixir learning. I'm going through [this one](https://medium.com/@diamondgfx/introduction-fe138ac6079d#.n1qf8xknm) since I thought it'd be useful to walkthrough how Phoenix handles MVC.&nbsp;
I came across the use of 'alias.' It does essentially what it sounds like it would do. It allows you to set up an alias for a module name, so by aliasing TestModule.Test as Test, you can just reference it as Test.
Aliases are lexically scoped, which means they can be defined inside specific functions and will only be invoked in those functions.

