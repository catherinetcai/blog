+++
date = 2016-03-25T17:56:00Z
draft = false
title = "TIL - Selection Sort Algorithm"
aliases = ["/blog/2016/3/28/til-selection-sort-algorithm"]
categories = ["avsnitt"]
+++

Still going through Khan Academy's basic algorithms course.
The selection sort algorithm is pretty simple. Essentially, you take an array, loop through the entire array, find the index of the smallest number and swap that with the first index in the array. Repeat the entire process until the array is sorted.
The running time of the selection sort algorithm is more interesting. If the length of the array is 8, we loop through the array 8+7+6... (and so on) or (8+1)(7+2)(6+3)(5+4) times. So... 9*4 = 36 times. Essentially, the way we'd solve for an arithmetic series like this is (n+1)(n/2).
To find the asymptotic running time of this, we have to think about the total running time for 1) the function iterating over the array 2) the function for swapping tow numbers 3) the function that finds the minimum index in a subarray. Since we already know the formula (n^2/2 + n/2)... the running time is Big-Theta(n^2).
 

