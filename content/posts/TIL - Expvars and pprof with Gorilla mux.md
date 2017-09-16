+++
date = 2017-01-11T00:49:02Z
draft = false
title = "TIL - Expvars and pprof with Gorilla mux"
aliases = ["/blog/2017/1/10/til-expvars-and-pprof-with-gorilla-mux"]
categories = ["avsnitt"]
+++

I've recently been looking into profiling Go apps, since one of the ones I've been working on is mysteriously crashing.
I was recommended [expvar](https://golang.org/pkg/expvar/)&nbsp;and [pprof](https://golang.org/pkg/net/http/pprof/). Unfortunately, most of the examples I saw on the Internet were simplistic. They usually involved importing expvar and pprof, and having the packages hijack /debug/vars and /debug/pprof.&nbsp;
The app I'm working on is using [Gorilla mux](https://github.com/gorilla/mux) for routing, so the setup wasn't quite as simplistic. We were registering routes by breaking up services and having the router register each service's routes individually. This would allow services their own namespace without having to manually add them in each route (ex. the debug services's routes would be available at "www.host.com/debug/...")
In any case, this setup will work with mux if you want custom routes, etc:&nbsp;
And for expvar, all you need to do is the following:
I added this into my Debug service, so everything was available at http://my-host.com/debug/pprof and http://my-host.com/debug/vars.
 

