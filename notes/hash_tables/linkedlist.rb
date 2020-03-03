#!/usr/bin/env ruby

require_relative 'node'

class LinkedList
  def initialize(data = nil)
    @head = Node.new(data)
  end

  def append(value)
    node = @head
    new_node = Node.new(value)

    while (node.next != nil)
      node = node.next
    end
    node.next = new_node
  end

  def find(value)
    node = @head

    return node if node.value == value
    while (node = node.next)
      return node if node.value == value
    end
  end

  def print
    node = @head

    while (node = node.next)
      puts node
    end
  end
end
