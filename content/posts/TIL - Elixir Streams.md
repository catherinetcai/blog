+++
date = 2016-03-18T17:30:00Z
draft = false
title = "TIL - Elixir Streams"
aliases = ["/blog/2016/3/18/til-enumerable-streams"]
categories = ["avsnitt"]
+++

I'll give you the tl;dr up front:&nbsp;Enumerables are greedy. Streams are lazy.
Essentially, that means that Elixir will wait to process all of an enumerable before it gives you back the result, whereas streams will use only what is required to be evaluated. Dave Thomas gives the example of reading data from a remote server. Using an Enum would take a very long time, since lines of data would arrive slowly, and the Enum would require all of the data before processing started. Streams would immediately call the process as the data arrived.
There are some stream helper functions to keep in mind:
* Stream.cycle - Takes an enumerable and returns an infinite stream containing those elements. This means that when it reaches the end of the enumerable, it'll repeat from the beginning.* Stream.repeatedly - Takes a function and invokes it each time a new value is wanted.* Stream.iterate(start_value, next_func) - Generates infinite stream. It will create each successive value by applying next_func to the start_value.* Stream.unfold - You supply a start_value and a next_func, like iterate. The function will return two values, returned as a tuple. The first is the value to be returned by the current iteration and the second is the value that's going to be passed on. If the function returns nil, it will terminate. The function looks something like fn state -&gt; { stream_value, new_state } end* You can build a Fibonacci sequence using this:* Stream.unfold({0,1}, fn {f1, f2} -&gt; {f1, {f2, {f1+f2}} end |&gt; Enum.take(15)&nbsp;* Stream.resource - Based off of Stream.unfold, but for you to interact with external resources. Stream.resource takes a function to get the initial value, what to do with the resource, and then an argument for what to do with the resource when you're done (e.g. closing the file.)* 
