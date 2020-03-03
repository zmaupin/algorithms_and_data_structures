#!/usr/bin/env ruby

class Node
  attr_accessor :value, :next

  def initialize(value, next_node = nil)
    @value = value
    @next = nil
  end

  def to_s
    "#{@value}"
  end
end
