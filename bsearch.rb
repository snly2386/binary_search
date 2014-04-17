require 'rubygems'
require 'pry-debugger'
module ArrayUtil
 def self.bsearch(array, element)

   start_index = 0
   end_index = array.length-1

   if array.empty? == true
     return false
   else
     ArrayUtil._bsearch(array, element, start_index, end_index)
   end
   # If the array is empty return a result
   # Otherwise call your helper _bsearch method
 end

 def self._bsearch(array, element, start_index, end_index)

   if start_index == end_index && array[start_index] == element
     return true
   elsif start_index == end_index
     return false
   end

   mid_index = start_index + (end_index - start_index)/2
   if array[mid_index] == element
     return true
   elsif element > array[mid_index]
     _bsearch(array, element, mid_index+1, end_index)
   elsif element < array[mid_index]
     _bsearch(array, element, start_index, mid_index)
   end


   # If the start and end indeces are the same, search
   # that element and return
   #
   # Otherwise, find the midpoint
   #   midpoint = start_index + (end_index - start_index) / 2
   #
   # If the element is greater than the one at midpoint, call
   #   _bsearch on the right half of the remaining array
   # Otherwise, call _bsearch on left half of the remaining array
 end
end
