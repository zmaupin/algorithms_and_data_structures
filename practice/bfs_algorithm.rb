#!/usr/bin/env ruby

=begin
# BFS Algorithm in Ruby
- BFS uses a queue, so create one
- Create an array to track visited nodes
- Add root to the queue
- Start the queue and continue until the queue is empty
  - get a node from the queue
  - if you haven't visited it
    - visit the node
    - add it to visited
    - enqueue the nodes adjacent to the current one
=end

require 'byebug'

class Graph
  attr_accessor :nodes

  def initialize(nodes = [])
    @nodes = nodes
  end
end

class Node
  attr_accessor :name, :children

  def initialize(name, children = [])
    @name = name
    @children = children
  end
end

def bfs(graph)
  queue = []
  visited = []
  root = graph.nodes.first
  queue << root
  while queue
    break if queue.empty?
    node = queue.delete_at(0)

    unless visited.include?(node)
      visit(node)
      visited << node
    end

    if node.children
      node.children.each do |n|
        queue << n
      end
    end
  end
end

def visit(node)
  puts "Hey, #{node.name}! It's nice to see you."
end

#       1
#   2      3
# 4   5  6   7

# graph = {
#   1 => [2, 3],
#   2 => [4, 5],
#   3 => [6, 7],
#   4 => [],
#   5 => [],
#   6 => [],
#   7 => []
# }


four = Node.new(4)
five = Node.new(5)
six = Node.new(6)
seven = Node.new(7)
two = Node.new(2, [four, five])
three = Node.new(3, [six, seven])
one = Node.new(1, [two, three])

graph = Graph.new([one, two, three, seven, four, five, six])
# byebug
bfs(graph)
