# Trees and Graphs


## Trees

- Trees are a type of graph.
- A tree is a data structure composed of nodes.
	- Each tree has a root node (not always true in graph theory, but it's usually how we use trees in programming and especially interviews.)
	- The root node has zero or mode child nodes.
	- Each child node has zero or more child nodes, and so on.
	- The tree cannot contain cycles.
	- The nodes may or may not be in any specific order.
	- The nodes can have any data type as values.
	- The nodes may or may not have links back to their parent nodes.

```ruby
class Node
	attr_accessor :node, :children
	# node is usually some type of string
	# children is an array of nodes
end
```

### Possible interview issues to look for

- Trees vs Binary Trees # need better notes on this.
	- Binary tree is a tree in which each node has up to two children.
	- A tree for phone numbers would be a 10-ary tree. Each node could have up to 10 children.
	- A node is called a leaf if it has no children.

- Binary Tree vs Binary Search Tree
	- A binary search tree is a binary tree in which all nodes fit a specific ordering property.
	  - ex. `All left descendants <= n < all right descendants`
		- This must be true for each node.

- Be sure to ask if the tree is a binary tree or a binary search tree.
- Beware that the definition of a binary search tree can vary slightly with respect to equality under some definitions.
	- The tree cannot have duplicate values.
	- In others, the duplicate values will be on the right or can be on either side.

- Balanced vs Unbalanced
	- Be sure to understand if you are working with a balanced tree, unbalanced tree, or perfect tree.
	- Balanced: Think of balanced as not terribly unbalanced.

- Complete Binary Trees
	- Every level of the tree is completely filled, expect for perhaps the last level. To the extent that the last level is filled, it is filled left to right.

- Full Binary Trees
	- A tree in which every node has either 0 or 2 children nodes. No nodes have 1 child.

- Perfect Binary Tree
	- A tree is both full and complete.
	- All leaf nodes are at the same level and this level has the maximum number of nodes.
	- Perfect trees are rare in interviews as well as real life.
