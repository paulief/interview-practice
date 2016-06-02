# Design an algorithm and write code to remove the duplicate characters in a string

def remove_dup_chars(str)
	new_chars = []
	used_chars = {}

	str.split('').each do |char|
		if used_chars[char].nil?
			new_chars << char
			used_chars[char] = 1
		end
	end

	new_chars.join('')
end


puts remove_dup_chars('abc')
puts remove_dup_chars('aabbcc')
puts remove_dup_chars('abcc')
puts remove_dup_chars('abddcc')
