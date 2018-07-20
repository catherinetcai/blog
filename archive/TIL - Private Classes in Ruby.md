+++
date = 2016-02-26T00:12:05Z
draft = false
title = "TIL - Private Classes in Ruby"
aliases = ["/blog/2016/2/25/til-private-classes-in-ruby"]
categories = ["avsnitt"]
+++

I always took for granted that private classes simply weren't a thing in Ruby.&nbsp;
There are a few clever ways to get around the inability to make a private class. The [Arkency blog ](https://blog.arkency.com/2016/02/private-classes-in-ruby/?utm_source=rubyweekly&utm_medium=email)pointed out that a constant can be made private. Therefore, attempting to access that constant to instantiate the class will throw an error, like so:
Now, attempting to call Sample::SecretSample throws an error.&nbsp;

