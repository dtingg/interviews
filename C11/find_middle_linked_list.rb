# C11: Explain how a linked list works. Given a linked_list, find the middle node. 

# Time: O(n)
# Space: O(1)

def find_middle(linked_list)
  i = 1
  current = head
  
  while current.next != nil
    i += 1
  end
  
  middle = i / 2
  
  pointer = head
  
  middle.times do
    pointer = pointer.next
  end
  
  return pointer.value
end

# Bonus: Return nth last item from linked list

# Time: O(n)
# Space: O(n)

def find_nth_from_end(linked_list, n)
  first = head
  second = head
  
  n.times do 
    second = second.next
  end
  
  while second.next != nil
    first = first.next
    second = second.next
  end
end
