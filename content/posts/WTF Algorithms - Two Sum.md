+++
date = 2017-03-20T01:31:33Z
draft = false
title = "WTF Algorithms - Two Sum"
aliases = ["/blog/2017/3/19/wtf-algorithms-two-sum"]
categories = ["avsnitt"]
+++

Today's WTF Algorithms is going to be this [LeetCode's Two Sum](https://leetcode.com/problems/two-sum/#/description) problem.

Given an array of integers, return indices of the two numbers such that they add up to a specific target.
You may assume that each input would have exact one solution, and you may not use the same element twice.

[2,7,11,15], target: 9

[0,1]
Usually, when I see something having to do with an array/slice... my first thought is to iterate over each element and brute force the problem. Hey, even if it's not the sexiest and fastest way to solve the problem, it's still a solution.
Let's take a look at the pseudocode.
Essentially, we're just nesting a loop within a loop and just procedurally adding each combination one at a time, and checking to see if it's the correct target. If it is, then we return the target. Obviously, this isn't efficient and if we're worried about Big O, this would be a O(n^2).
Another way to do this would be via a map that keeps track of a number's complement when subtracted from the target and its index. It'll make a little more sense when looking at the pseudocode:
Let's go over the first pass of this with the first two numbers in the input: 2 and 7.
The first loop would have the complement as 9-2, which is 7. The map is going to be empty, so we won't be hitting that return. Instead, we'll just add 7 into the complement map with an index of 0. In our first pass, our map will contain: { 7 =&gt; 0 }.
The second loop will have the complement be 9-7, which is 2. The map will have 7, which matches up with our current loop of nums[1] = 7. That means that we now have the index of the two numbers that make the sum. We look for 7 in the map, which returns 0. So we'll be returning 0 and our current index, 1.
This algorithm can definitely be improved upon. We could add a conditional to check for negatives. This will only work for positive integers. This whole things falls apart when we look for negatives.&nbsp;

