#!/usr/bin/env ruby

class Queue
  def initialize
    @queue = []
  end

  def enqueue(value)
    @queue << value
  end

  def dequeue
    first = @queue.first
    new_arr = []
    @queue.each_index do |e|
      new_arr << @queue[e] unless e == 0
    end
    @queue = new_arr

    first
  end
end

queue = Queue.new()

5.times do
  num = rand(10)
  puts "Enqueuing #{num} in the queue."
  queue.enqueue(num)
end

5.times do
  puts queue.dequeue
end
