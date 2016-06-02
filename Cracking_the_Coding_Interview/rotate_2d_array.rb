
# rotate 2D array

def rotate(arr, n)
	max_layer = (n / 2).floor

	(0..max_layer).each do |layer|
		first = layer
		last = n - layer - 1

		(first..last-1).each do |i|
			offset = i - first

			# save top
			top = arr[first][i]

			# left -> top
			arr[first][i] = arr[last-offset][first]

			# bottom -> left
			arr[last-offset][first] = arr[last][last-offset]

			# right -> bottom
			arr[last][last-offset] = arr[i][last]

			# top -> right
			arr[i][last] = top
		end
	end

	arr
end



arr = [[1, 2, 3],
			 [4, 5, 6],
			 [7, 8, 9]]

puts rotate(arr, 3)
