+++
date = 2017-08-08T15:18:24Z
draft = false
title = "TIL: Tshark"
aliases = ["/blog/2017/8/1/til-tshark-fujNr"]
categories = ["avsnitt"]
+++

I've been getting into the nitty gritty with Kubernetes networking and playing around with [BGP peering across two VPCs using Calico](http://docs.projectcalico.org/v2.2/usage/configuration/bgp). I still haven't fully grasped how BGP peering works, so I won't get into that here.&nbsp;
Essentially, the problem boiled down to this. I had two Kubernetes clusters running with Calico launched in two different VPCs that were peered to each other. I set up one worker node in each cluster as BGP peers. Calico verified that they were connected and communicating correctly.
I then launched an nginx pod in each cluster in order to test that I could curl each pod IP correctly from the other cluster and interact with it as you would a pod in your own cluster. Unfortunately, that didn't happen. After a lot of back and forth between IP tables and using tcpdump, I decided that I wanted to break out Wireshark to sniff out why I was able to see packets from the other cluster make it onto the other node, but get dropped.
Unfortunately, since I was popped in a box and Wireshark is GUI-only... I had to find an alternative. Enter [tshark](https://www.wireshark.org/docs/man-pages/tshark.html), which is essentially Wireshark as a CLI tool.
The TIL:
 

