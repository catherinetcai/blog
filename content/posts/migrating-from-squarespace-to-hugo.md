---
title: "Migrating From SquareSpace to Hugo"
date: 2017-09-17
publishDate: 2017-09-17
draft: false
aliases: ["/blog/2017/9/17/migrating-squarespace"]
categories: ["til"]
---

The migration is complete... almost. Some of my previous blog posts are probably still improperly formatted and some of my lighting portfolio didn't seem to make the cut at all.

SquareSpace's formatting doesn't make it conducive to migrating your blog to anything other than Wordpress, to put it lightly. You can export your entire site into XML, which is... *ugh*. I decided to decide the mild headache it was to migrate from SquareSpace to Hugo hosted on GitHub Pages just in case I decided I wanted to retrace my steps in doing this again. Not that I think I am. I really like SquareSpace, but it's primary purpose isn't as a blogging engine.

**Challenge 1: XML to Markdown**
Thankfully, the Internet always has solutions if you Google Fu hard enough. I used a lightly modified version of [this](https://github.com/kodsnack/sqs-to-hugo) to convert everything into Markdown for Hugo (most of it was going through and try/catching a couple things that would blow up due to weird formatting).

**Challenge 2: Hugo Themes**
GitHub Pages supports Jekyll right out of the box, but I wanted to give [Hugo](https://github.com/gohugoio/hugo) a spin, since I've been a worshipper at the cult of Golang as of late. (Not really, but I've been coding Go about 90% of the time for over a year now.) Hugo takes a little bit more setup than Jekyll does, but it's mostly due to a couple of weird quirks around theming. 

Hugo's [quickstart](https://gohugo.io/getting-started/quick-start/) guide is amazing for getting going. I was dumb and tried to set up this blog via a combination of my work (Macbook Pro) and home (Dell XPS 15 running Elementary Freya) laptops. I made the dumb mistake of initially installing Hugo via `apt-get`, which gets you a pretty outdated version of Hugo. Follow Hugo's docs to [install it via Snap](https://gohugo.io/getting-started/installing/) or just compile the binary on your own. Seriously, just do it. I ended up having a mild WTF moment when Hugo would work fine on my work laptop, but not my home laptop.

Anyway, Hugo oddly doesn't ship with any sort of default theme. That means once you've migrated and added all your content and run Hugo, you'll see... nothing. Yup. Just a big fat white blank page. No errors. Cool cool cool. You *must* have a theme installed, so just find one and download it or `git clone` it into the "themes" directory of your project and add the name in your config.toml file. I ended up installing [beautifulhugo](https://themes.gohugo.io/beautifulhugo/) by making a git submodule.

Once that's done, when you run Hugo, you should actually see your content. Huzzah!

**Challenge 3: Hugo to GitHub Pages**
You can deploy Hugo to display on GitHub Pages a [couple of ways](https://gohugo.io/hosting-and-deployment/hosting-on-github/). Since I wanted my blog to run at catherinetcai.github.io, I ended up opting to go with a setup where all of my post content is in a separate [blog](https://github.com/catherinetcai/blog) repo and I set up my catherinetcai.github.io repo in the public/ folder and set up the public/ folder as a submodule. The guide also provides a helpful deploy script so that every time you have new content, it'll commit and push to the public folder for you.

And there it is! Blog migrated. Sort of. I've set up the domain to point to the right place, but now I'll have to set up CloudFlare or something else for SSL. Huzzah.
