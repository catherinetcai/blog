+++
date = 2016-04-29T21:33:00Z
draft = false
title = "TIL - Parallelism vs Concurrency"
aliases = ["/blog/2016/5/2/til-parallelism-vs-concurrency"]
categories = ["avsnitt"]
+++

I'm picking through parts of to get a better grasp on Erlang's OTP. It explains the Erlang idea behind parallelism vs concurrency.
Concurrency is the idea that there are many actors running around doing things... not necessarily at the same time. Parallelism is having a lot of actors running around doing things at the same time. Parallelism didn't require multiple cores on one computer to work - you just had two different computers. However, now with multiple cores, parallelism is possible on a single computer.
 

