# grokking algos book, page 9

# Public: runs a binary search to find an integer in an array of numbers.
#
# @list - array of integers
# @item - the number you are searching for in @list
#
# Returns the INDEX where @item was found or Nil.

def binary_search(list, item)
  # the range of items being searched changes based on low / high values
  low = 0
  high = list.size - 1    # -1 to get highest index
  
  while low <= high
    mid = (low + high) / 2  # index of the middle point of the list
    guess = list[mid]   # always guess the value at the MIDDLE of the list of items to elimnate 50% searchable items

    if guess == item
      return mid   # returns INDEX where the value is found, NOT the value
    elsif guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end
end


my_list = [0,0,1,2,3,4,5,6,7,8,9,10,11]

# TEST 01: pass number in the list
index = binary_search(my_list, 7)


# TEST 02: pass number NOT in the list
index = binary_search(my_list, 33)

# tracing
if index.nil?
  p "number doesn't exist in the list."
else
  p "Number Found! value: #{my_list[index]} is at index: #{index}"
end


