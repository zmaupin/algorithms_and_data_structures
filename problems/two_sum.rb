#!/usr/bin/env ruby
=begin
problem: return the indices of the two numbers that add up to the target
examples:
[2, 7, 11, 15], target is 9
2 and 7 add up to 9
return [0, 1]
data structure: store `target - index` as keys and the values as the result of the expression in a hash
algorith: iterate through array, adding `target - index1` to the hash as the key, then find the index of the result
=end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hsh = {}

  nums.each_index do |i|
    difference = target - nums[i]
    if hsh.has_key?(difference)
      return [hsh[difference], i]
    else
      hsh[nums[i]] = i
    end
  end

  hsh
end


