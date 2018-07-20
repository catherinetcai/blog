+++
date = 2017-08-08T15:08:31Z
draft = true
title = "Starting Go: Things I Wish Someone Had Told Me About Before I Started Learning Go"
aliases = ["/blog/2017/8/8/starting-go-things-i-wish-someone-had-told-me-about-before-i-started-learning-go"]
categories = ["avsnitt"]
+++

I started programming in Go just about a year ago. Before then, my experience in programming professionally was in Ruby, JavaScript,&nbsp;and Java. My manager at Grindr showed up and turned all of ISRE (Grindr's infrastructure/SRE team) into good little Gophers.
I'm not gonna lie: grokking Go at first was for me. Coming from primarily a Ruby/Rails background, I was used to dynamic types, Ruby metaprogramming magic, and Ruby doing all the heavy lifting for me when it came to handling different data types. As a lapsed Rubyist (since I've converted most of my day-to-day programming to Go), my philosophy on productivity with code was all about having the language do the heavy lifting of dealing with data types and coercion. I loved the ability to be able to quickly pull in a YAML or JSON file and interact with it as a Hash or an OpenStruct, and I was used to being able to ducktyping my way out of anything.
I had also picked up some habits (not necessarily good and not necessarily bad either) from Ruby that just wouldn't fly with Go. One of my fallback methods to debugging Ruby was popping open IRB, requiring the classes I needed to debug, and manually stepping through each function that needed debugging by calling them and seeing that I was getting the correct types back. In lieu of sparse documentation in gems, I would frequently abuse Ruby's #methods function in order to figure out what I could call on a class.&nbsp;
That is not the Go way. In fact, what tripped me up too was that there wasn't really a "Go way" like there is with Ruby. Ruby's community's strength is all about&nbsp;

