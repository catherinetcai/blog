+++
date = 2016-02-17T02:00:42Z
draft = false
title = "TIL - Dynamic Connectivity and the Union-Find Algorithm"
aliases = ["/blog/2016/2/16/til-dynamic-connectivity-and-the-union-find-algorithm"]
categories = ["avsnitt"]
+++

I don't have any formal training in CS, and as a result I don't have any formal training in algorithms or algorithm-design. I consider this a huge gap in my skill set and I've been looking over [Robert Sedgewick's algorithm course on Coursera](https://class.coursera.org/algs4partI-010) to remedy this.&nbsp;
The class starts off with dynamic connectivity and the union-find algorithm. The dynamic connectivity structure looks something like this:&nbsp;
[http://davidmles.com/blog/dynamic-connectivity-ruby/graph1.png](http://davidmles.com/blog/dynamic-connectivity-ruby/graph1.png)
If numbers have lines connecting each other, then they're considered "connected." In that picture, 8 and 9 are considered connected, despite not having a direct connection. Any time you connect two numbers, you've done a "union" between the two.
Sedgewick explained the idea behind a few implementations of the union-find algorithm. The fastest implementation is simply to pull in N numbers from STDIN. You'd have an array of ids of size N that represent the numbers from 0 to N. Any time you make a union between two numbers, you'd replace the id at the index of that number to match the id of the original number. For example, if you call union(4,3), you'd replace the id of 3 (which is originally 3), to 4. The idea is that you'd do that over and over again for each join.
Obviously, this implementation isn't very efficient. This doesn't scale at all. It'd take N^2 array accesses to process sequence of N union commands on N objects. That means, given that N is 1 million... it would take a really, really long time.&nbsp;
Sedgewick then explained that the best way to approach this was to use the quick-union algorithm using weighted-sorting and path compression. This essentially means first getting rid of the quick-find algorithm in the first place. Think of the dynamic connectivity data structure as a tree. When you run union(4,3), you'll connect 3 to 4 as a sub-node. But let's say you then do union(3,6). You'll then add 6 as a sub-node of of 3. Obviously, following this method means you could potentially end up with very, very tall trees, which is the drawback to this algorithm. Using weighted-sorting means that when adding sub-nodes, the algorithm will keep track of the length of the tree and always sort to a shorter node.&nbsp;
Path-compression kind of goes along this way of thinking as well. To shrink down the length of trees, path-compression makes it so that the id of each node will be examined down to its root, and adding nodes will add nodes to the root of the tree. This is expensive, so the one-pass variant is to make every other node in the path point to its grandparent.
This is a ton of conceptual work. But it basically means that the algorithm is close-to (and not quite) linear over time. It reduces the process of running 1 billion operations from 30 years (with a simple quick-find) to 6 seconds. Crazy stuff.

