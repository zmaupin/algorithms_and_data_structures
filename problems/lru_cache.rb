#!/usr/bin/env ruby
=begin
  use a hash (hashes record the order of inseration in Ruby after 1.9)
=end

# Least Recently Used cache
# support operations `get` and `put`
#
class LRUCache

=begin
    :type capacity: Integer
=end
  def initialize(capacity)
    @capacity = capacity
    @elems = {}
  end

=begin
    :type key: Integer
    :rtype: Integer
=end
  def get(key)
    val = @elems.delete(key) # get the last key
    if val # if it's not nil
      @elems[key] = val
    else
      -1
    end
  end

=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
  def put(key, value)
    @elems.delete(key) 
    @elems[key] = value
    @elems.delete(@elems.first.first) if @elems.size > @capacity # if we're at capacity wen need to remove some items
  end
end

# Your LRUCache object will be instantiated and called as such:
# obj = LRUCache.new(capacity)
# param_1 = obj.get(key)
# obj.put(key, value)
