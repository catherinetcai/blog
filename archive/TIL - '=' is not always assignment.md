+++
date = 2016-02-18T22:49:00Z
draft = false
title = "TIL - '=' is not always assignment"
aliases = ["/blog/2016/2/24/til-is-not-assignment"]
categories = ["avsnitt"]
+++

I started reading through Dave Thomas's . Yes, I'm hopping on the Elixir/Phoenix hype train. People in the Ruby community are calling this the future of Rails, so I'm going in to see what all the noise is about.&nbsp;
This TIL is pretty simple. In most languages, a single '=' means assignment. If I say x = 12, it means I'm assigning 12 to the variable x. Simple.
In Elixir, '=' is a match operator. Thomas describes it as
So essentially, in Elixir, if you decide to equate a to 1 (a=1), you'd be able to also stay (1=a). But the moment you decide to try (2=a), you'd get a MatchError, which declares that a, which is 1, does not match 2. You can set a to 2 by declaring another a=2, but it's just good to keep in mind that 2=a does not mean the same thing as a=2.
 

