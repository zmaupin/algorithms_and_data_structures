#!/usr/bin/env ruby

require_relative 'linkedlist'

linkedlist = LinkedList.new()

%w(
  10
  20
  30
  50
).each do |num|
  linkedlist.append(num)
end

linkedlist.print
