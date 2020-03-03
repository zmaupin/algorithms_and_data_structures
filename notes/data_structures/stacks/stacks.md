# Stacks

Stacks are LIFO (Last In First Out)

API:
push() add an item to the stack
pop()  remove the most recently added item

```ruby
class Stack
	def initialize
		@stack = []
	end

	def push(value)
	  @stack << value	
	end

	def pop()
    @stack.pop
	end
end
```
