#!/usr/bin/env ruby

# Stacks:
# LIFO
# initialize()
# push()
# pop()

class Stack
  def initialize
    @stack = []
  end

  def push(value)
    @stack << value
  end

  def pop
    @stack.pop
  end
end

stack = Stack.new

5.times do
  num = rand(10)
  puts "Pushing #{num} on top of the stack."
  stack.push(num)
end

5.times { puts stack.pop }
