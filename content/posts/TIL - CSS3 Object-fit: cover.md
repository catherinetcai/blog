+++
date = 2016-03-09T01:47:00Z
draft = false
title = "TIL - CSS3 Object-fit: cover"
aliases = ["/blog/2016/3/9/til-css3-obje"]
categories = ["avsnitt"]
+++

CSS3 is black magic.&nbsp;
I've been trying to responsively re-adjust the height and crop the image of a carousel. The problem I was dealing with was in regards to a design meant for smaller screens. I just couldn't figure out how to get the image to crop right using JavaScript.
Then I stumbled across this [Medium article](https://medium.com/@chrisnager/center-and-crop-images-with-a-single-line-of-css-ad140d5b4a87#.mzbdbwb4r).&nbsp;
One line of CSS literally solved all my problems.&nbsp;
Basically, object-fit:cover works with a set width and height (which I was setting via JS based off screen height.) This works the same way as background-size: cover. Pop object-fit: cover on the image and it automatically will figure out how to crop and center itself.

