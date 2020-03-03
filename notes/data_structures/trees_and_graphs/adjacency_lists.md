# Adjacency Lists

- Most common way to represent a graph.
- Every vertex stores a list of adjacent vertices.
- In an undirected graph, an edge like `(a, b)` would be stored twice, once as `a`'s adjacent vertices and once as `b`'s adjacent vertices.

```ruby
class Graph
	attr_accessor :nodes
end

class Node
	attr_accessor :name, :children # children is an array of nodes
end
```

- Graph class is used because, unlike in a tree, you can't necessarily reach all the nodes from a single node.
- You don't necessarily need any additional classes to represent a graph.
- An array or hash table of lists (arrays, arraylists, or linked lists, etc.) canstore the adjacency list.
	- Ex.
	- 0: 1
	- 1: 2
	- 2: 0, 3
	- 3: 2
	- 4: 6
	- 5: 4
	- 6: 5
	- We generally use `node` classes unless there's a compelling reason not to.
