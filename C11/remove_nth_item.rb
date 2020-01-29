# C11: Remove nth item

# Write a method to remove the nth item from an array.

def delete_nth(array, index)
  array.delete_at(index)
  
  return array
end

p delete_nth([1, 2, 3, 4, 5], 1) # [1, 3, 4, 5]

# Write a method to remove the nth item from a linked list.

def delete_nth_linked(list, n)
  i = 0
  
  current = head
  
  (n - 1).times do
    current = current.next
  end
  
  current.value = current.next.value
  current.next = current.next.next
end
