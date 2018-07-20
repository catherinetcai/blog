+++
date = 2016-05-05T00:06:00Z
draft = false
title = "TIL - Phoenix Scrub Params"
aliases = ["/blog/2016/5/8/til-phoenix-scrub-params"]
categories = ["avsnitt"]
+++

The similarities between Phoenix and Rails are eerie. It's nice as a Rails dev moving over into Elixir/Phoenix.
Scrub params is apparently supposed to work like Rails's strong params. It scrubs the parameters passed in from the request. It checks to see if the passed in key is required, then it changes it to nil.

