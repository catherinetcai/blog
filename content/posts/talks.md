---
title: "Talks"
draft: false
aliases: ["/page/talks"]
---
I've been seen out in the wild doing a talk here and there.

## Deploy Your Next Application to Google Kubernetes Engine (Google Next '19)
This talk was done in conjunction with the wonderful GKE PM [William Denniss](https://twitter.com/WilliamDenniss). My coworker [Marshall Brekka](https://twitter.com/marshallbrekka) and I discussed Fair's experiences with Kubernetes.

[![HYB101](https://img.youtube.com/vi/JDBq2JvzQOY/0.jpg)](https://www.youtube.com/watch?v=JDBq2JvzQOY&feature=youtu.be "Deploy Your Next Application to Google Kubernetes Engine")

## A Tale of Two Clusters: Handling Interservice Routing Between Two K8 Clusters (K8 Los Angeles Meetup)
My coworker Marshall Brekka and I talked about the cross-cluster controller we wrote to handle routing between our two Kubernetes cluster. It leverages/abuses the AWS VPC CNI, K8 services, and K8 endpoints so that the application layer can call to applications in another cluster as if it were in its own cluster. [slides here](https://docs.google.com/presentation/d/10XcKahvyRkGChDhB0DNTrbZwcdt2RHnkY_wg7McrGSI/edit#slide=id.g4249b9029b_0_43)
