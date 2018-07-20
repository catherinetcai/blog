+++
date = 2016-04-28T18:42:00Z
draft = false
title = "TIL - Mutex"
aliases = ["/blog/2016/5/2/til-mutex"]
categories = ["avsnitt"]
+++

I haven't done a lot in the way of multithreading and concurrency in Ruby, so it's a whole new world for me in Java.
I came across the concept of mutex at work. I didn't have to touch it, but I got curious about what the term meant.
Wikipedia:
From what I can tell, in Java, only one thread can own a mutex at a time. If a second thread tries to own the mutex, the first thread must release the mutex first. This [article](http://www.javaworld.com/article/2076797/java-concurrency/programming-java-threads-in-the-real-world--part-2.html)&nbsp;uses an airplane bathroom as an analogy: only one person can occupy the bathroom at a time.&nbsp;
In Java, every object (not class, obviously)&nbsp;has one monitor and mutex associated with it. You care about the state of one specific airplane bathroom, not the rest.&nbsp;
In theory, by having an object be locked to one thread until the thread is finished with its work, you should prevent race conditions in the sense that you won't have two threads competing. This doesn't prevent deadlock conditions, where threads might be waiting on each other to finish stuff.&nbsp;

