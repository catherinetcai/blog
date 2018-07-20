+++
date = 2016-04-09T02:41:00Z
draft = false
title = "TIL - GenServer Debugs"
aliases = ["/blog/2016/4/18/til-genserver-debugs"]
categories = ["avsnitt"]
+++

Back to the Elixir world. I've been learning a little more about GenServers, which are still wildly confusing to me. I think that's mostly because of unfamiliar syntax.
Anyway, &nbsp;teaches a few useful tricks about debugging GenServers.
The GenServer.start_link method has a couple of options to make tracing a little easier. This is the syntax:
Now, a GenServer method is called, the output will show a trace of the incoming calls and the responses.&nbsp;

