# Hash Tables

- To implement a hash table:
  - Compute the keys' hash code. Usually this is an int or a long.
	- Then, map the hash code to an index in an array, `hash(key) % array_length`.
	- At the index from step 2 there is a data structure, usually a linked list, of keys and values.
	  - Note: We use linked lists to avoid collisions between two different entries with the same key.
- To retrieve a value you repeat the process then search through the linked list to find the value.
- Runtime: With a high number of collisions, O(n) where `n` is the number of keys.
- We generally assume a good implementation that keeps collisions to a minimum. This is O(1).
- If concerned with space you can use a balanced binary search tree. This is O(log n).

## API

initialize() # initialize an empty hash
upsert(key, value) # inserts or updates an entry in the hash table
get(key)
delete(key)
print

```ruby
class HashTable
	def initialize
		@
	end
	

	def hash(key)
		key.to_i * 1000 % 10
	end
end
```
