+++
date = 2016-07-23T02:01:23Z
draft = false
title = "TIL - Application Layer Protocol Negotiation (ALPN)"
aliases = ["/blog/2016/7/22/til-application-layer-protocol-negotiation-alpn"]
categories = ["avsnitt"]
+++

Missed the TILs by a month. Whoops. Things in my personal life are in motion... and I've got to get moving settled before I can dedicate fully to writing these daily.
---
I've been reading through . Highly recommended read for anyone who wants to delve more into TCP/IP, HTTP, TLS, etc.
ALPN is a TLS extension that allows peers to negotiate a protocol for communication without additional roundtrips (which adds latency). The client appends a list of supported protocols to a message that's passed to the server, and the server inspects the list and returns a protocol back to the client that it supports. Should the server not support anything within the client's supported list of protocols, it can terminate the connection.

