+++
date = 2016-05-05T15:31:46Z
draft = false
title = "TIL - MySQL Temporary Tables"
aliases = ["/blog/2016/5/5/til-mysql-temporary-tables"]
categories = ["avsnitt"]
+++

I had to import some data into MySQL from a csv file that I didn't want to persist in a table. I learned that you can create temporary tables in MySQL that function just like a regular table. They don't show up when you call a `show tables;`.&nbsp;
Temporary tables are only visible in the current session and will only remain alive for as long as that session is alive. It will be dropped automatically once the session is closed. This means that two different sessions can create temporary tables of the same names without any conflicts. Very useful if you're just using the data to run a quick query.

