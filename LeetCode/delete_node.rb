# LeetCode: Delete Node in a Linked List
# Write a function to delete a node (except the tail) in a singly linked list, given only access to that node.

class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def delete_node(node)
  node.val = node.next.val
  node.next = node.next.next
end
