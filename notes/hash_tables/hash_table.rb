#!/usr/bin/env ruby

require_relative 'linkedlist'

class HashTable
	def initialize
		@hashtable = []
		@hash_value = 100
  end

	def hash(key)
    ((key.to_s.hash) * 3.14).to_i.abs
	end

  def index(key)
    hash(key) % @hash_value
  end

	def upsert(key, value)
    node = @hashtable[index(key)]
    if node
      while (node.next != nil)
        node = node.next
      end
      node.next = Node.new(value)
    else
      @hashtable[index(key)] = Node.new(value)
    end
	end

	def get(key)
    arr = []
    node = @hashtable[index(key)]
    arr << node.value

    while (node.next != nil)
      node = node.next
      arr << node.value
    end
  end

	def delete(key)
    @hashtable[index].previous.next = nil
	end

	def print
    arr = []
    @hashtable.each do |node|
      next if node.nil?
      while (node.next != nil)
        puts node.value
        node = node.next
      end
      puts node.value
    end
	end
end

hashtable = HashTable.new

hashtable.upsert('counter', 12)
hashtable.upsert('counter', 100)
hashtable.upsert('bob', 13)
hashtable.upsert('twohundred', 14)
hashtable.upsert('one', 15)
hashtable.upsert('all', 16)
hashtable.upsert('hash', 17)
hashtable.upsert('test', 18)

hashtable.print
