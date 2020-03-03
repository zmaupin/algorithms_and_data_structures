# Adjacency Matrices

Q: What is an Adjacency Matrix?
A: NxN boolean matrix where N is the number of nodes. `matrix[i][j]` indicates an edge from node i to node j. You can also use an integer matrix and express true/false as 1/0.

- In an undirected graph, an adjacency matrix will be symmetric.
- It will not necessarily be symmetric in a directed graph.
- The same graph algorithms that are used on adjacency lists can be performed with adjacency matrices, but they may be somewhat less efficient.
- In adjacency list representation you can easily iterate through the neighbors of a node.
- In adjacency matrix representation, you will need to iterate through all the nodes to identify a node's neighbors.
