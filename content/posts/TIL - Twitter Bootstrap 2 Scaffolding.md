+++
date = 2016-03-05T01:20:00Z
draft = false
title = "TIL - Twitter Bootstrap 2 Scaffolding"
aliases = ["/blog/2016/3/8/til-twitter-bootstrap"]
categories = ["avsnitt"]
+++

I've been working on some legacy projects in Rails for work. One of the projects is using Rails 3 and Bootstrap-Sass 2.3.1. As a result, I had my first brush with Bootstrap 2.
The grid system with Bootstrap 2 is really different from Bootstrap 3. I'm used to typing out .col-xs-12 all the time. With Bootstrap 2, it's as trivial as creating a div with a .row class, and then adding a sub-div that has a class of .span*, which the * being the number of columns of space that you want the div to take up.&nbsp;
Bootstrap 2 uses the 12 column system, just like Bootstrap 3. For the most part, it's functionally the same, except that Bootstrap 2 doesn't really work too well with smaller devices.&nbsp;

