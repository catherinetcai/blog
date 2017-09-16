+++
date = 2016-04-08T00:16:00Z
draft = false
title = "TIL - MySQL, UTF8, and Emojis"
aliases = ["/blog/2016/4/13/til-mysql-utf8-and-emojis"]
categories = ["avsnitt"]
+++

Recently at work, the backend services team had a project to start supporting the moderation of emojis. The idea was to flag emojis in profile text that'd potentially be spam or be solicitation of prostitution. We added in methods to allow for emojis to be stored in the database and be matched against in moderation. It looked like it worked with a few emojis that we tested out, and we moved on with our lives.
A few weeks later, our team discovered a bug. For whatever reason, the system could parse one emoji, but any similar emojis would not be inserted into the system.&nbsp;
After poking around the Internet for a bit, I suspected that it was an encoding issue. And it was. Even though the table was utf8mb4, as was recommended to be able to add in emojis (hence why we could add emojis in the first place), for whatever reason, MySQL was still parsing 💸 and 💰 as the same thing.&nbsp;
I've read quite a few bug reports on this ([here](https://core.trac.wordpress.org/ticket/32105)). Using utf8mb4_unicode_ci allows MySQL to read/write emojis to the database. However, MySQL will recognize emojis (which are Unicode supplementary characters) as all one and the same, which means if you run a query like:
...and you have multiple entries with emojis... you'll get back all of those results.
If you change default collation to be utf8mb4_unicode_520_ci, emojis are supported. However, this is reliant on running MySQL 5.6 or above.

