#!/usr/bin/env ruby

require 'byebug'

def max_sub_array(nums)
  @cache = [] # set instance variable cache to an empty a rray
  max_sum(nums, nums.length - 1) # (find the maximum sum of nums to the length of nums - 1
  @cache.max # find the maximum value in @cache and return it
end

def max_sum(nums, i)
  return @cache[i] = nums[0] if i == 0 # if the index is 0, we're at the start of the array and there's nothing to sum, so add that element to the cache
  return if i == nums.length # if we're at the end of the array return nil
  @cache[i] = [(nums[i] + max_sum(nums, i-1)), nums[i]].max # recursively find the sums of elements in the array, add the max of the sum vs the element at i 
end

p max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
