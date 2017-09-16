+++
date = 2016-04-19T04:49:47Z
draft = false
title = "TIL - Slowloris Attack"
aliases = ["/blog/2016/4/18/til-slowloris-attack"]
categories = ["avsnitt"]
+++

Today, at work, we had to deal with a SEV that was related to a Slowloris attack. Our devops folks sent us a handy guide on what exactly a Slowloris attack is.
Slowloris a DoS-type of attack that floods a server with multiple, slow requests to take up a server's connections. Webservers are limited to the number of connections they can hold open to not eat up memory.&nbsp;
The best ways to deal with a slowloris attack? The usual slurry of things: load balancers, increasing the max number of connections a client can make, reducing the number of connections coming from a single IP, etc.
 

