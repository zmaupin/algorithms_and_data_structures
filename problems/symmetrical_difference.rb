#!/usr/bin/env ruby

=begin
  Given two arrays, determine the symmetrical difference between the two. Your method should return an array.

  Input: ([1, 41, 10, 21], [30, 21, 1, 10])
  Output: [1, 10, 21]
=end
def symmetrical_difference(arr1, arr2)
  arr = []

  arr2.length.times do |index|
    arr << arr2[index] if arr1.include?(arr2[index]) && !arr.include?(arr2[index])
    arr << arr1[index] if arr2.include?(arr1[index]) && !arr.include?(arr1[index])
  end

  arr
end

p symmetrical_difference([1, 41, 10, 21], [30, 21, 1, 10])
