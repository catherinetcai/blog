+++
date = 2017-03-13T19:00:00Z
draft = false
title = "WTF Algorithms - Swapping Numbers in Place Without Temporary Variables"
aliases = ["/blog/2017/3/12/wtf-algorithms-swapping-numbers-in-place-without-temporary-variables"]
categories = ["avsnitt"]
+++

I got this one from the [studying.io](https://itunes.apple.com/ca/app/studying.io-tech-interview/id776410587?mt=8)&nbsp;app on the App Store.
Swap two numbers in place without using temporary variables.
123, 345
345, 123
This question was originally written for C. In Go, you can kind of hack this one by doing this trick:
And you've effectively swapped the two. Obviously, that's a huge cheat.
I'm going to admit that I had to look this one up. The solution to this ended up just being one of those "tricksy algorithmssss" moments, in my opinion.


What this question is trying to drive at is using XOR (exclusive OR) to swap these variables.
If you haven't really used bitwise operators, this problem's going to be a bit of a doozy. Ok, so, let's go back to the basics. At the very basic level, XORs work this way:
The really important thing to keep in mind here is that anything XOR'd to itself is 0.
That's my solution in full. The important bit is just the entire series of XORing that happens in main().
So let's break that down into something a little more clear.
This technique is fine and dandy to use when we're learning algorithms, like we are now, but there's no real reason to do this in your actual code. This will just confuse the shit out of everybody, and all your coworkers will probably hate you.
There are also some other caveats that have to do with how the variables are stored that are discussed in depth on [Better Explained](https://betterexplained.com/articles/swap-two-variables-using-xor/).&nbsp;

