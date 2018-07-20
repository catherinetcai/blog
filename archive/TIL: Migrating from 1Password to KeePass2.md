+++
date = 2017-04-14T18:10:40Z
draft = false
title = "TIL: Migrating from 1Password to KeePass2"
aliases = ["/blog/2017/4/14/til-migrating-from-1password-to-keepass2"]
categories = ["avsnitt"]
+++


I recently bought a XPS 15" in lieu of wanting Macbook-like thinness and specs without the Macbook price tag (also that danging touchbar...) I ended up not being able to tolerate Windows 10, so I immediately partitioned the hard drive and booted up [Elementary OS](https://elementary.io/) on a friend's recommendation. I've dabbled with Linux distros via VM (and I had a short stint where I decided I was going to take a crack at Arch Linux), but I never fully got around to actually going full hog Linux.
One of the things preventing me from making the move was migrating off of 1Password. I wasn't sure how to do it safely and quickly.
This entire guide is assuming that you're migrating from OSX -&gt; a Debian-like distro.

The same friend who turned me onto Elementary OS also turned me onto Syncthing. Think of it like a decentralized Box or Dropbox. It's pretty awesome. Install it on both OS X and your Linux setup. Run it on both and create your Sync folders. (I just threw mine in the default $HOME/Sync directory to make it easier to find..

Export your 1Password vault on the Mac side as unencrypted CSV. It's going to give you oodles of warnings about how this is unsafe. We know, and accept the risks.
You're going to want to export just very specific fields so that upon import, figuring out the structure of the CSV on the Keepass2 side won't be overwhelming. The important bits are the Title, Username, Password, Description, and URL. Anything else you want to import is just icing on the cake.&nbsp;
Export the file into your Sync folder. Ensure that the sync completes on both sides.

From Keepass2, you're going to want to go to File -&gt; Import. When the dialog option opens up, select the General CSV Importer. That 1PW CSV importer is a lie. It never worked for me.
In any case, you'll just want to go to the preview to see how the fields will get imported in. Likely, the order is going to be wrong, and you're going to have to adjust the structure of each field. Once that's complete, just hit import.
If you had a gianormous 1Password vault like me, it's probably going to look like the importer is doing nothing. Nope, it's fine. Leave it alone and just let it do its thing. There's no progress bar to tell you how the sync is going, which is disappointing, but if you just leave it running for an hour or so, it'll eventually complete and you'll have a populated database.

