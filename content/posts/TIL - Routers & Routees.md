+++
date = 2016-05-02T16:41:00Z
draft = false
title = "TIL - Routers & Routees"
aliases = ["/blog/2016/5/4/til-routers-routees"]
categories = ["avsnitt"]
+++

I'm reading through some of because we're hosting a Q&amp;A with the author at work. The book opens talking about routers and routees, which I'm not too familiar with.
Routers essentially spawn actors to distribute work. Each actor has a mailbox in which to hold onto messages and &nbsp;upon them. There are different strategies for how routers work:
* Random - Using a random strategy, one routee may have way more messages than others.* Round robin - Messages are distributed to actors in an ordered sequence, as if they're in a ring. This is so that work can be delivered equally among different actors.&nbsp;* Smallest mailbox - Messages are distributed to actors with the smallest mailboxes. This isn't necessarily a good thing, because not all messages are equal. An actor may have a message that takes a long time to perform.* Broadcast - Messages are sent to all instances of an actor. Since all instances of the actor are getting the same message, they should in theory all be the same state of either having messages or an empty mailbox.&nbsp;* ScatterGatherFirstCompletedOf - Message is sent to all instances of an actor, but only the first response is handled. This method is good for getting back a quick response. However, the trade off is efficiency - this causes latency and requires more CPU.* Consistent hash routing - This is for when you want work to be handled by the closest server and by specific routees to help with latency. This does not guarantee equal distribution of work, as the closest routee might be the one getting the most work.
