def first_anagram?(string1, string2)
    ana_string1 = string1.split("").permutation.to_a #O(n!)
    ana_string1.include?(string2.split(""))
end

str1 = "aaamnklmmm"
str2 = "manaklammm"

before_1 = Time.now
p first_anagram?(str1, str2)
after_1 = Time.now
puts "first anagram time: #{after_1 - before_1}"

def second_anagram?(str1, str2) # --> O(n^2)
    str2_arr = str2.split("") # O(n)
    str1.each_char.with_index do |char, idx| # O(n)
        str2idx = str2_arr.index(char) # O(n)
        str2_arr.delete_at(str2idx) if !str2idx.nil? #O(1)
    end
    str2_arr.empty? # O(1)
end

before = Time.now
p second_anagram?(str1,str2)
after = Time.now
puts "second anagram time: #{after - before}"


