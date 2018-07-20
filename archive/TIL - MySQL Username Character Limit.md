+++
date = 2016-12-21T06:01:46Z
draft = false
title = "TIL - MySQL Username Character Limit"
aliases = ["/blog/2016/12/20/til-mysql-username-character-limit"]
categories = ["avsnitt"]
+++


Today's TIL is a quick one. While working on an application at work for spinning up application clusters with configurations/schema, I encountered this lovely error:&nbsp;
Nice. (Also, don't mind the dominant-paramour. That's just a very... Grindr-appropriate petname generator we came up with.)
Apparently, in MySQL versions prior to 5.7.8, usernames can't be more than 16 characters. [Yup, that's hardcoded in clients and the server.](http://dev.mysql.com/doc/refman/5.7/en/user-names.html)&nbsp;After 5.7.8, the limitation is upped to 32 characters.&nbsp;

