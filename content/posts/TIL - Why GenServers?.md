+++
date = 2016-03-30T05:43:24Z
draft = false
title = "TIL - Why GenServers?"
aliases = ["/blog/2016/3/29/til-why-genservers"]
categories = ["avsnitt"]
+++

I've been doing a lot of Elixir programming with Dave Thomas's . I've just gotten into the section about concurrency... specifically the parts about GenServers.
Whenever I feel like I'm falling behind in grasping a concept, I have to take a step back and ask why I'm learning these concepts. It's easy to get caught up in the details of GenServers and nodes. Unfortunately,&nbsp;doesn't necessarily get too much down into the details of why all this message passing is necessary.
I read this great article that kind of [explains](http://dantswain.herokuapp.com/blog/2015/01/06/storing-state-in-elixir-with-processes/) what GenServers are doing.
State.
In OOP, state is easy. State is something that you don't even really think about. You can assign something to an instance variable and forget about it, because as the state of something is updated, you can update the instance variable.&nbsp;
Unfortunately, one of the hardest things to let go of in functional programming is that idea. When I'm dealing with the fundamentals of doing some simple recursion through a list to spit out some values for practice problems, it's easy to remember that. When I'm trying to figure out what the heck a GenServer even does... I've forgotten. It's hard to untrain yourself to habits you've learned. You can't store state in an instance variable in Elixir... so what do you do?
The article I linked above explains that you create a process that allows you to store state. You create an API to interact with the process, which essentially has a setter and a getter (in a sense). You then have a message passing system between processes to handle state.

