+++
date = 2016-06-23T18:47:46Z
draft = false
title = "TIL - Docker Mac OS Beta Integration With IntelliJ"
aliases = ["/blog/2016/6/23/til-docker-mac-os-beta-integration-with-intellij"]
categories = ["avsnitt"]
+++

After attending DockerCon 2016, I was inspired to start getting my workflow geared more towards Docker overall. I jumped into the open Docker beta and I installed the Docker Integration plugin in IntelliJ.
I found out soon afterwards that the instructions are out of date and the plugin hasn't been upgraded to support the new beta. The instructions still use docker-machine.
Thankfully, there was this [guide here](http://blog.dekstroza.io/osx-docker-beta-intellj-playing-nicely/)&nbsp;that documents out the steps to get IntelliJ talking to your Docker engine. Underneath the covers, the Docker beta on Mac no longer uses Virtualbox, but the xhyve hypervisor. The end user no longer has access to the DOCKER_HOST IP. The guide basically uses socat to funnel traffic from a unix domain socket to TCP so that the plugin can get access to it.
The only problem is that the latest version of the Docker Integration plugin (2.2.1) doesn't support tcp url structures. The guide is wrong in that sense. It's actually an easy fix... just swap things over to http:// and you're golden.
 

