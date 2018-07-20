+++
date = 2016-02-25T06:59:47Z
draft = false
title = "TIL - Immutable Data in Elixir"
aliases = ["/blog/2016/2/24/til-immutable-data-in-elixir"]
categories = ["avsnitt"]
+++

Data in Elixir is immutable. If I were to, for example, match x to a string, and then capitalize the first word of the string, I wouldn't be transforming the original,, but creating a copy and saving the copy.&nbsp;
For the most part, there's not much of a noticeable difference, except in the syntax. In Ruby, you'd call "string".capitalize. In Elixir, it's String.capitalize "string."

