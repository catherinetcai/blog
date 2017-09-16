+++
date = 2016-03-31T17:55:00Z
draft = false
title = "TIL - Sharing Data From Host Machine and Docker Containers"
aliases = ["/blog/2016/4/7/til-sharing-data-from-host-machine-and-docker-containers"]
categories = ["avsnitt"]
+++

I've been working on Dockerizing some apps.
It's not a fun time to say the least. Most of the documentation out there is with Rails, Django, and Wordpress, not Java. In fact, there's a startling lack of documentation on Dockerizing for Java. I'm assuming it's because Rails/Django apps better lend themselves towards microservice architecture. Java, with its numerous dependencies, works better being deployed as a monolith.
Regardless... it was difficult to find a lot of documentation on configuring apps with Zookeeper. Everyone's jumped on the Hashicorp Consul train, it seems.&nbsp;
One of my biggest challenges was understanding how data could be shared between the host machine and a container. Since I'm working off of OS X, Docker-Machine adds another layer of complexity to it. I couldn't, for the life of me, figure out why some of my volume mounts wouldn't show up with Docker.
It has to do with Docker-Machine. Docker-Machine, since it's running in a VM, only has access to certain files on the host machine (for security purposes.) Apparently, it only has access to what's available in your /User/ folder. So, attempting to volume mount data from Zookeeper or MySQL wouldn't work, since those exist outside of the /User/ folder. This means that in MySQL, since you're usually not running as root, it won't have access to write to your host machine.

