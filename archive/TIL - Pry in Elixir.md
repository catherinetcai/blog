+++
date = 2016-03-17T00:50:00Z
draft = false
title = "TIL - Pry in Elixir"
aliases = ["/blog/2016/3/17/til-pry-in-elixir"]
categories = ["avsnitt"]
+++

There've been no TILs in the past few days because I've been on vacation on a trip to Seattle. My brain needed a braincation, so complete detoxing on learning.
I've been doing some [Exercism](http://exercism.io)&nbsp;exercises to practice Elixir syntax/thinking. I realized I wanted something similar to Ruby's pry debugger to be able to step into my code.
Thankfully, Elixir does have something similar. It simply involves inserting 'require IEx' into the module you're going to be using the debugger. Then, it functions pretty similarly to Ruby, where you insert a pry as a breakpoint for where your code ought to go. Example:
Then, when running the code, when Elixir hits the breakpoint, it'll prompt you on a "request to pry." You can answer yes or no. A very neat feature, considering Ruby's pry just steps you in without permission.

