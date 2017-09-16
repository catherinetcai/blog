+++
date = 2017-07-13T04:31:55Z
draft = true
title = "Running Spinnaker on Docker"
aliases = ["/blog/2017/7/12/running-spinnaker-on-docker"]
categories = ["avsnitt"]
+++

One of the things I've been working on at work has been getting Netflix's [Spinnaker](https://www.spinnaker.io/)&nbsp;running. Spinnaker is meant to work like CI/CD for infrastructure and plug into a bevy of cloud services. Previously, Spinnaker could be installed on AWS via AMIs running Ubuntu 14.04 with all of the Spinnaker services installed. The configurations for each service could be managed via yaml. However, due to configuration drift and some architectural changes, Spinnaker is now installed via a new configuration service called Halyard and the install is now distributed, supported only on GCE and Kubernetes.&nbsp;
I decided I wanted to give it a shot running and provisioning a Dockerized Spinnaker. I thought a good jumping off point would be the experimental [docker-compose](https://github.com/spinnaker/spinnaker/tree/master/experimental/docker-compose)&nbsp;stuff that the Spinnaker team had started working on.
 

