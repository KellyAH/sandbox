# grokking algos book, page 35

# #1 - create method that finds smallest elements in array

# Public: finds the smallest element in an array
#
# @array - array of integers
#
# Returns the INDEX where the smallest item is located
def find_smallest(array)
  smallest = array[0]
  smallest_index = 0

  array.each_with_index do |value, index|
    if value < smallest
      smallest = value
      smallest_index = index
    end
  end
  smallest_index
end

my_array = [5, 3, 100, 2, 6, 2, 44, 52, 0, 32, 11, 10, 100]
# index_of_smallest_item = find_smallest(my_array)
# p "index of where the smallest items is: #{index_of_smallest_item} where value is #{my_array[index_of_smallest_item]}"


# #2 - create selection sort method
def selection_sort(array)
  new_array = []

  # book's python code is doing 2 things, I can't do in ruby:
    # 1. uses python's pop method. which in python returns the item present at the given index and removes it from the list.
    # ruby's pop method is different - it removes the last element in an array and returns it.
    # 2. deletes elements from the array while it's still iterating through it. doing this in ruby causes breaks
  until array.empty?
    smallest = find_smallest(array)
    new_array.append(array[smallest])
    deleted_value = array.delete_at(smallest)
  end
  new_array
end

p "selection_sort: #{selection_sort(my_array)}"
