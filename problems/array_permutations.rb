#!/usr/bin/env ruby
=begin
problem: given an array of distinct integers, return all possible permutations
example:
input: [1, 2, 3]
output: 
[
 [1, 2, 3],
 [1, 3, 2],
 [2, 1, 3],
 [2, 3, 1],
 [3, 1, 2],
 [3, 2, 1]
]
data structure: nested array
algorithm:
=end


# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  nums.permutation.to_a
end

