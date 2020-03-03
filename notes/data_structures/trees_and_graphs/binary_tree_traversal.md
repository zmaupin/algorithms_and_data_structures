# Binary Tree Traversal

- Be comfortable implementing in-order, post-order, and pre-order traversal.
- The most common is in-order.

## In-order Traversal

Q: What is in-order traversal?
A: In-order traversal means to "visit" the left branch, the current node, then finally the right branch. When performed on a binary search tree, it visits the nodes in ascending order.

```ruby
def in_order_traversal(node) # <TreeNode node>
	if (node != nil)
		in_order_traversal(node.left)
		visit(node)
		in_order_traversal(node.right)
  end
end
```

## Pre-order Traversal

Q: What is pre-order traversal?
A: Pre-order traversal means to "visit" the current node, then the left branch, and finally the right branch. Root is always the first node visited.

```ruby
def pre_order_traversal(node) # <TreeNode node>
	if (node != nil)
		visit(node)
		pre_order_traversal(node.left)
		pre_order_traversal(node.right)
	end
end
```

## Post-order Traversal

Q: What is post-order traversal?
A: Post-order traversal means to "visit" the left node, then the right node, and finally the current node.

```ruby
def post_order_traversal(node) # <TreeNode node>
	if (node != nil)
		post_order_traversal(node.left)
		post_order_traversal(node.right)
		visit(node)
	end
end
```
