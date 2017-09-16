+++
date = 2016-04-04T18:58:00Z
draft = false
title = "TIL - Ecto Changesets"
aliases = ["/blog/2016/4/10/til-ecto-changesets"]
categories = ["avsnitt"]
+++

The blog engine in Phoenix tutorials I've been going through have done a good job of explaining what's happening... but it never really explained what changesets were.&nbsp;
I'm familiar with Rails's ActiveRecord in database interaction. And thankfully, there's this convenient ["Ecto for Rails developers" ](http://renderedtext.com/blog/2016/04/07/ecto-for-rails-developers/)guide.&nbsp;
In ActiveRecord, you can just make changes to the object to update the database. Elixir has changesets to document the changes that will be sent. You would create a changeset and then call Repo.update.&nbsp;

