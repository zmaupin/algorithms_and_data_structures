#!/usr/bin/env ruby

=begin
problem: write an algo to determine if a number is "happy"
a happy number is defined by the following process:
1. start with any positive integer
2. replace the number by the sum of the squares of its digits
3. repeat the process until the number equals 1
4. or it loops endlessly in a cycle which does not include 1
5. the number is "happy" if it reaches 1

examples:
Input: 19
Output: true
Explanation: 
1^2 + 9^2 = 82
8^2 + 2^2 = 68
6^2 + 8^2 = 100
1^2 + 0^2 + 02 = 1

data structure: ints

algo:
recursive until 1 (will have to revisit this since some numbers will end up in a loop)
=end
# @param {Integer} n
# @return {Boolean}
def is_happy(number)
  nums = [] # initialize an empty array to store the numbers

  while number != 1 # run the loop until number is 1
    nums << number # add the number to the nums array, 
    number = square_sum(number) # call square_sum on number and set number to the return value
    return false if nums.include?(number) # if we have the same number again break out of the loop so we're not stuck
  end

  true
end

def square_sum(number)
  arr = [] # initialize an empty array

  number.digits.each { |digit| arr << (digit ** 2) } # add each digit of integer numbers to arr after squaring it

  arr.sum # return the sum of the arr that contains the square of each digit in the int number
end
