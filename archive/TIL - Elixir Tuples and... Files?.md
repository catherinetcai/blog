+++
date = 2016-02-27T06:16:47Z
draft = false
title = "TIL - Elixir Tuples and... Files?"
aliases = ["/blog/2016/2/26/til-elixir-tuples-and-files"]
categories = ["avsnitt"]
+++

Elixir types are interesting. Dave Thomas categorizes tuples as a collections type not common to most languages. I've seen tuples in action in Python before, so I thought it would be something similar along those lines.
Nope. Absolutely wrong. Elixir put its own pattern matching spin on it. Tuples are collections that can contain any data type, and are typically two to four elements.&nbsp;
A common use case for tuple pattern matching is in regards to functions. Often, functions return a tuple where the first item is an :ok.&nbsp;
The above allows you to check whether or not a file is opened successfully since a successful File.open will return the tuple of :ok, and then the file in question. Otherwise, it'll throw a MatchError since an unsuccessful file open will return a { :error, :enoent }.&nbsp;
God, Elixir is weird.

