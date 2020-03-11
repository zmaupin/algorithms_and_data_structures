#!/usr/bin/env ruby

=begin
Given a directed graph, design an algorithn to find out whether there is a route between two nodes.
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

def visit(node)
  puts "Hey, #{node.name}! It's nice to see you."
end

four = Node.new(4)
five = Node.new(5)
six = Node.new(6)
seven = Node.new(7)
eight = Node.new(8)
two = Node.new(2, [four, five])
three = Node.new(3, [six, seven])
one = Node.new(1, [two, three])

graph = Graph.new([one, two, three, seven, four, five, six, eight])

def bfs(graph, start_node, end_node)
  queue = []
  visited = []
  queue << start_node

  while (!queue.empty?)
    node = queue.delete_at(0)
    if (!visited.include?(node))
      node.children.each do |child|
        if child == end_node
          return true
        else
          queue << child
        end
      end
    end
  end

  false
end

p bfs(graph, one, eight)
