# Implement an algorithm to determine if a string has all unique characters What if you
# can not use additional data structures?

def unique_chars(str)
	char_check = {}
	str.split('').each do |char|
		if char_check[char].nil?
			char_check[char] = 1
		else
			return false
		end
	end

	return true
end


puts unique_chars('abcdefsa')
puts unique_chars('ghijklm')
