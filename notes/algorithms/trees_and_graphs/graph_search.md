# Graph Search

- The two most common methods are Breadth-First Search (BFS) and Depth-First Search (DFS).

Q: How does DFS work?
A: With DFS, start at the root node (or any other arbitrarily selected node) and explore each branch completely before moving on to the next branch. Go deep first.

Q: How does BFS work?
A: With BFS, start at the root node (or any other arbitrarily selected node) and explore each neighbor before goign on to any of their children. Go wide first.

- DFS is often preferred if we want to visit every node in the graph.
- BFS is generally better if you want to find the shortest path between two nodes.

## DFS

- Visit node `n` and then iterate through each of `n`'s neighbors. When visiting node `b` we must visit all of `b`'s neighbors before going on to `a`'s other neighbors.
- Pre-order and other forms of tree traversal are forms of DFS. The key difference is that when implementing this algorithm for a graph, you must keep track of nodes that have been visited or you risk getting stuck in a loop.

Pseudocode DFS
```ruby
def search(root) # <Node root>
	if (root != nil)
		visit(root)
		root.visited = true
		root.adjacent.each do |n|
			if (n.visited == false)
				search(n)
			end
		end
end
```

- One could say that DFS uses a stack (the call stack since it's recursive).

## BFS

- Visit node `a` and visit each of node `a`'s neighbors before visiting any of their neighbors. Search level by level out from `a`.
- An iterative solution using a queue usually works best.

Pseudocode BFS
```ruby
def search(root) # <Node root>
	queue = Queue.new()
	root.marked = true
	queue.enqueue(root)

	while (!queue.empty?)
		r = node.dequeue()
		visit(r)
		r.adjacent.each do |n|
			if (n.marked == false)
				n.marked == true
				queue.enqueue(n)
			end
		end
end
```

- BFS uses a queue.
- If asked to implement BFS, remember the use of the queue. The rest of the algorithm flows from this fact.
