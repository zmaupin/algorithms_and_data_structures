#!/usr/bin/env ruby

# problem: determine if the parentheses in a string are valid
# input: "()"
# output: true
# input: "()[]{}"
# output: true
# input: "(]"
# output: false
# data structure: stack (array with pop)
# algo:
=begin
 - for each character in s
 - add to array if (, [, {
 - pop from array if ), ], }
 - if stack is not empty return false
=end
# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []

  s.each_char do |char| # iterate over each character in the string `s`
    case char
    when '(', '[', '{' then stack << char # push the char onto the stack if it's an opening parens
    when ')'
      return false unless stack.pop == '(' # pop from the stack and if the return value from that matches the closing parens we're at now in `char` move on, else return false
    when ']'
      return false unless stack.pop == '['
    when '}'
      return false unless stack.pop == '{'
    else
      return false
    end
  end

  stack.empty? # if the stack is empty we do not have valid parens, so return true only if the stack is empty
end
