+++
date = 2016-04-06T06:15:00Z
draft = false
title = "TIL - Launching a war with Tomcat in Docker"
aliases = ["/blog/2016/4/11/til-launching-a-war-with-tomcat-in-docker"]
categories = ["avsnitt"]
+++

I've been working on Dockerizing the backend application at work.
It's been a frustrating process, to say the least. I don't think the workflow I've come up with is the best thing, but it'll take some time before I can work out all the kinks.
The most frustrating thing of all was getting everything set up, and then having the war not get launched properly (even though I saw the entire backend app start up).
It turns out that Tomcat was deploying and running the ROOT.war. In the build steps, I just removed the ROOT.war and replaced my app as the ROOT.war. Sample Dockerfile below:

