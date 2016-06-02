# Write a method to decide if two strings are anagrams or not

def anagram_check(str1, str2)
	char_cts1 = char_ct(str1)
	char_cts2 = char_ct(str2)

	char_cts1 == char_cts2
end

# returns a hash with the counts of each character
def char_ct(str)
	char_cts = {}
	str.split('').each do |char|
		if char_cts[char].nil?
			char_cts[char] = 1
		else
			char_cts[char] += 1
		end
	end

	char_cts
end


puts anagram_check('abc', 'cba')
puts anagram_check('abc', 'cda')
puts anagram_check('longer', 'ongrel')
puts anagram_check('With a space', 'aWthi  cespa')

