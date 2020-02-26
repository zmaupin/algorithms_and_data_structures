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
  hsh = {} # initialize an empty hash

  nums.each_index do |i| # iterate over nums using indices
    difference = target - nums[i] # calculate the difference of target - the element at index i
    if hsh.has_key?(difference) # if the difference is already in the hash, then return that value
      return [hsh[difference], i]
    else
      hsh[nums[i]] = i # if the difference is not in the hash, then add it
    end
  end

  nil
end


