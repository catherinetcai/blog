+++
date = 2016-03-30T18:51:00Z
draft = false
title = "TIL - Building and Pushing Docker Images"
aliases = ["/blog/2016/4/6/til-building-and-pushing-docker-images"]
categories = ["avsnitt"]
+++

I know that I seem to be all over the place. I'm learning bits of Docker, Elixir, and Java all at once. I'm using Java for work, learning Docker to use down the line &nbsp;work, and learning Elixir for my personal amusement.
In any case, this TIL is pretty simple.
I'd done work with Docker before at a previous job. Most of my time was spent pulling images and building containers. I hadn't really worked too much with building my own Docker images.
I'm having to prototype some Docker stuff for my current job to see how it'll go. The challenge so far is getting all my containers set up with the right configurations and talking to each other. More to come on that, I'm sure.
Anyway, building Docker images from a Dockerfile is fairly simple. It involves passing the '-t' command to the 'docker build' command. (See lovely list of docker build args [here](https://docs.docker.com/engine/reference/commandline/build/).) Passing the -t tags the built container with a name.&nbsp;
Example:
The Docker container will build. Run a docker images, and voila, you'll see your tagged docker image listed.
The thing I wasn't clear about was how I'd be able to push this image to my Docker Hub. Docker Hub essentially acts like a "Git repo" for Docker images. I was a goof and naming my containers things like 'maven-groovy-docker' and attempting to push it to my Docker Hub... and scratching my head as to why it failed.
If you're pushing from the CLI, you need to tag your images with your Docker Hub username and then the image's name. So, you would tag it as 'dockerhubuser/imagename'. If you don't specify a version with the tag (i.e. 'dockerhubuser/imagename:7', then it'll always tag it as the latest. This means that when someone pulls your image name without a version, it'll pull this version.
Full command to push (assuming you're logged in):
And Docker will do the magic for you. If you look in your Docker Hub now, it'll be publicly (unless you've set it as private) available for anyone to download.

