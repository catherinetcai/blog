+++
date = 2016-04-26T15:17:00Z
draft = false
title = "TIL - A Better Way to Handle Local Gems"
aliases = ["/blog/2016/4/28/til-a-better-way-to-handle-local-gems"]
categories = ["avsnitt"]
+++

One of my biggest points as a frustration as a Ruby dev was building an app off of local versions of the gem. I would have to point the Gemfile towards a path, which would inevitably break or do weird things during bundle installs. It's also easy to forget those and leave those into the Gemfile before pushing to Git.
Apparently, you can also point to a local version of a gem using bundle config. From the command line, you can simply specify bundle config local.gemname /path/to/gemname. This means you won't have to worry about checking in the wrong path again.

