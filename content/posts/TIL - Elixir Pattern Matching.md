+++
date = 2016-02-19T20:54:00Z
draft = false
title = "TIL - Elixir Pattern Matching"
aliases = ["/blog/2016/2/24/til-elixir-pattern-matching"]
categories = ["avsnitt"]
+++

Yesterday's TIL talked about matches using the '=' operator. To recap, a=1 just matches a to 1, so that declaring 2=a after would raise an error.
Cooler things can be done with the match operator.
I can declare an Elixir list like so:
Okay, that's not so different from most other languages. But now, if I declare this:
I've now matched a to 1, b to 2, and c to 3. Elixir is looking for a way to make the left side value the same as the right side value. Since the left side is [a,b,c], which is three variables, and the right is three values, the two sides are made the same by matching them.
If I were to declare [a,1,b] = list, that would raise another MatchError, since 1 != 2.&nbsp;
 

