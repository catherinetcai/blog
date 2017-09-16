+++
date = 2016-03-03T02:05:00Z
draft = false
title = "TIL - The Elixir Pipe Operator"
aliases = ["/blog/2016/3/2/til-the-elixir-pipe-operator"]
categories = ["avsnitt"]
+++

Ah, yes. The pipe operator.
I've seen it used in Elixir code aplenty. I just wasn't exactly sure what it did.
Turns out it's just some syntactical sugar to make your code a little more readable. As opposed to chaining methods like so:
You could instead use the |&gt; operator, which takes the result of the expression and inserts it as the first parameter of the function invocation.
You can do this instead...
 

