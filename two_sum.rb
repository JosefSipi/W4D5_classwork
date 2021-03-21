def bad_two_sum?(arr, target)

    arr.each_with_index do |ele, i|
        arr.each_with_index do |ele2, i2|

           return true if i2 > i && ele + ele2 == target 
        end
    end
    return false

end




def two_sum?(arr, target)
    hash = {}
    
    arr.each do |ele|
        return true if hash[target - ele]
        hash[ele] = true
    end
    return false
    
end

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6)


def anagram?(str1, str2)
    str1.split("").sort == str2.split("").sort
end

p anagram?("yasll", "sally")

class Stack

    def initialzie 
        @stack = []
    end

    def remove
        @stack = @stack[0...-1]
    end

    def add(ele)
        @stack << ele
    end


end