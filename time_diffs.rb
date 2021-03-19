## LEARING GOALS ##
# Be able to determine the time and space complexity of a method
# Be able to compare the time complexity of one method to another
# Be able to recognize when time or space complexity can be improved


def my_min(arr)

    smallest_value = arr[0]

    arr.each do |ele1| # [ 0, 3, 5, 4, -5, 10, 1, 90 ] O(n)
        # smallest_value = ele1 if ele1 < smallest_value
        if arr.all?{|ele2| ele1 <= ele2 } #O(n)
            smallest_value = ele1
        end
    end

    smallest_value

end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

# Phase I --> O(n^2) QUADRATIC
# First, write a function that compares each element to every other element of the list. 
# Return the element if all other elements in the array are larger.
# What is the time complexity for this function?


# Phase II
# Now rewrite the function to iterate through the list just once while 
# keeping track of the minimum. What is the time complexity?