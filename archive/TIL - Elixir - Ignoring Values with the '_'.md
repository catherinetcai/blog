+++
date = 2016-02-22T23:22:00Z
draft = false
title = "TIL - Elixir - Ignoring Values with the '_'"
aliases = ["/blog/2016/2/24/til-elixir-ignoring-values-with-the-"]
categories = ["avsnitt"]
+++

It's good to think of Elixir pattern-matching as... regex. You don't necessarily always need to capture the value during a match. You can use the underscore in place of a variable. So, you can essentially do something like this:
...And get away with it. Subsequently, if you declare [1, _, _]=[1, "cat", "dog"], it won't blow up in your face.

