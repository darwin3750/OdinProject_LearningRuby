def bubble_sort(array)
  array.each_with_index{ |value1, index1|
    array.each_with_index{ |value2, index2|
      if(array[index2] > array[index2 + 1])
        array[index2], array[index2 + 1] = array[index2 + 1], array[index2]
      end
      break if index2 + 1 >= array.length - 1
    }
  }
  puts array 
end

bubble_sort([4,3,78,2,0,2])