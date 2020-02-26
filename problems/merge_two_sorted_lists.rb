#!/usr/bin/env ruby

# Definition for singly-linked list.
#  class ListNode
#      attr_accessor :val, :next
#      def initialize(val)
#          @val = val
#          @next = nil
#      end
#  end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  new_list = ListNode.new(0) # create a new linked list
  buffer = new_list # set a buffer to the new linked list, this is a dummy head

  while (l1 && l2) # while we are not at the end of the list)
    if l1.val <= l2.val # add whichever value is lowest to our new list
      new_list.next = l1 # set the next item in new_list to l1 since l1 <= l2
      l1 = l1.next # set l1 to the next node in the linked list
    else
      new_list.next = l2 # l2 is < l1, so it goes into the merged list 
      l2 = l2.next # set l2 to the next value in the linked list l2
    end
    new_list = new_list.next # move to the next node in new_list
  end

  new_list.next = l1 || l2 # we may have one value left in either l1 or l2, so add it to new_list

  buffer.next # return the linkedlist without the dummy head
end
