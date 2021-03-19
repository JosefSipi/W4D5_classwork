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

def my_min_2(arr)

    smallest_value = arr[0] # O(1)

    arr.each do |ele1| # [ 0, 3, 5, 4, -5, 10, 1, 90 ] O(n)
        smallest_value = ele1 if ele1 <= smallest_value #O(1)
    end

    smallest_value #O(1)

end
# Phase II --> linear O(n)
# Now rewrite the function to iterate through the list just once while 
# keeping track of the minimum. What is the time complexity?

list_2 = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min_2(list_2)

def largest_contiguous_subsum(list_3) # 
    combo = [] #O(1) #potentially up to 25 elements if n == 5
    list_3.each_with_index do |ele1, idx|  #O(n) --> O(n^4)
        combo << [ele1] #O(1)
        (idx...list_3.length).each do |idx2|  #O(n) --> O(n^3)
            combo << list_3[idx..idx2] unless combo.include?(list_3[idx..idx2]) #O(n^2) 
        end
    end
    largest = combo[0].sum #O(1)
    combo.each { |sub_arr| largest = sub_arr.sum if sub_arr.sum >= largest } #O(n)
    largest #O(1)
end
#Phase I
# --> POLYNOMIAL n^4

list_3 = [5, 3, -7]
p largest_contiguous_subsum(list_3) # => 8




def largest_contiguous_subsum_2(list_3) #O(n)
    largest = list_3[0] # [2, 3, -6, 7, -6, 7]  #O(1)
                #2
                        #2    #3
    list_3.inject do |accum, ele| # [2, 3, -6, 7, -6, 7] #O(n)
        if accum < 0 #O(1)
            ele #O(1)
        else
            largest = (accum + ele) if (accum + ele > largest) #O(1)
            accum += ele #O(1)
        end
    end
    largest #O(1)
end
list_3 = [2, 3, -6, 7, -6, 7]
# Phase II --> LINEAR #O(n)
# Let's make a better version. Write a new function using O(n) time with O(1) memory. 
# Keep a running tally of the largest sum. To accomplish this efficient space complexity, 
# consider using two variables. One variable should track the largest sum so far and another 
# k the current sum. We'll leave the rest to you.

p largest_contiguous_subsum_2(list_3)
