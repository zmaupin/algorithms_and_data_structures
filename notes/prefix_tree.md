# Prefix Tree (Trie)

Used for retrieval of a key in a dataset of strings.

Use Cases:

Autocomplete
Spell checker
IP Routing (Longest prefix matching)
T9 Predictive Text
Solving word games

Prefix Trees are more efficient than balanced trees or hash tables when:
  - Finding all keys with a common prefix.
	- Enumerating a dataset of strings in lexicographical (dictionary or alphabetical) order.

## Trie node structure

Trie is a rooted tree. Its nodes have the following fields:
- Maximum of `R` links to its children, where each links corresponds to one of `R` character values from dataset alphabet.


