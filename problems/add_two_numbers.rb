#!/usr/bin/env ruby
# given two non-empty linked lists representing two non-negative integers
# the digits are stored in reverse order, each node contains a single digit
# - add the two numbers and return it as a linked list
#
# examples:
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# 342 + 465 = 807
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  modulus = 0
  previous = dummy_head = ListNode.new(nil) # set the head to a dummy node

  while l1 || l2 || modulus.nonzero?
    modulus, quotient = [l1&.val, l2&.val, modulus].compact.sum.divmod(10) # get the modulus and quotient by removing nil elements, adding the values together, and then getting the modulus and quotient
    current = ListNode.new(quotient)
    previous.next = current

    previous, l1, l2 = current, l1&.next, l2&.next # move down the linked list
  end

  dummy_head.next # return the linked list after the dummy head node
end
