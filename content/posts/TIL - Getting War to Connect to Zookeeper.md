+++
date = 2016-04-07T05:28:00Z
draft = false
title = "TIL - Getting War to Connect to Zookeeper"
aliases = ["/blog/2016/4/11/til-getting-war-to-connect-to-zookeeper"]
categories = ["avsnitt"]
+++

Probably a TIL cheat. One of my biggest frustrations with Zookeeper was getting params passed in to get the war to connect and see Zookeeper.
I couldn't for the life of me figure out how to pass in params while Catalina was starting up. And then I realized passing in those options was as easy as updating an ENV variable. -_-
This can either be passed in as a step when starting up the docker container, in the Dockerfile, or in the docker-compose.yml's environment variables.

