+++
date = 2016-05-18T00:21:26Z
draft = false
title = "TIL - Hystrix's HystrixCommand vs HystrixObservableCommand"
aliases = ["/blog/2016/5/17/til-hystrixs-hystrixcommand-vs-hystrixobservablecommand"]
categories = ["avsnitt"]
+++

I had my first brush with Netflix's [Hystrix](https://github.com/Netflix/Hystrix)&nbsp;and RxJava today. I can't say I fully understand how Hystrix works... but one step at a time.
The first problem a coworker and I encountered when using Hystrix was figuring out the difference between HystrixCommand and HystrixObservableCommand. The documentation on Github isn't really clear. According to this [SO post](http://stackoverflow.com/questions/35569560/difference-between-hystrixcommand-and-hystrixobservablecommand), there doesn't actually seem to be that much difference. HystrixCommand and HystrixObservableCommand have some overlap. They both can have the .observe() method called on them for asynchronous calls.
Seems like HystrixObservableCommand is just HystrixCommand for wrapping Observable calls. Calling the .observe() instead of .execute() on a command returns an Observable that can be subscribed to.

