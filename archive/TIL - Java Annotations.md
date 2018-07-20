+++
date = 2016-02-13T01:58:10Z
draft = false
title = "TIL - Java Annotations"
aliases = ["/blog/2016/2/12/til-java-annotations"]
categories = ["avsnitt"]
+++

I think this TIL might as well just become a daily Java series at this point. I'll be regularly posting Java TILs for the foreseeable future, as I try to get fluent as quickly as I can.
Java Annotations are an interesting beast. Oracle's defined them as
There are a few different types of annotations that work with Java right out of the box. They're @Deprecated, @Override, @SuppressWarnings, @SafeVarargs, @FunctionalInterface. Their names are pretty self-explanatory. They're useful in the sense that at runtime, they can be used to generate some informational messages. @Deprecated, for example, allows you to mark something in your code as @Deprecated, so that you'll get a warning. I'm sure IDEs like IntelliJ pick up those annotations and take advantage of them in the GUI somehow.&nbsp;
Java 8 also introduced repeating annotations. To my understanding, prior to this release, you couldn't apply the same annotation to a class or a method.&nbsp;

