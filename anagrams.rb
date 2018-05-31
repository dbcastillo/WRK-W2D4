def first_anagram?(str1, str2)
  possibilities = str1.chars.permutation
  possibilities.include?(str2.chars)
end
# time complexity is 0(n!)
# increasing the string size makes it take longer

def second_anagram?(str1,str2)
  until str1.empty?
    a = str1.slice!(0)
    str2.delete!(a)
  end 
  str1 == str2
end 

def third_anagram(str1, str2)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  
  str1.chars.each { |ch| hash1[ch] += 1 }
  str2.chars.each { |ch| hash2[ch] += 1 }
  
  hash1 == hash2
end 
# time complexity is 0(n)

def bonus_anagram(str1, str2)
  cool_hash = Hash.new(0)
  str1.chars.each { |ch| cool_hash[ch] += 1 }
  str2.chars.each { |ch| cool_hash[ch] -= 1 }
  
  cool_hash.all? { |k, v| v == 0 }
end 