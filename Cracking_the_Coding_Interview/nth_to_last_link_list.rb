# Implement an algorithm to find the nth to last element of a singly linked list

class Node
	attr_accessor :data, :next_node

	def initialize(data)
		@data = data
	end
end

class LinkedList

	attr_reader :head

	def initialize(data)
		@head = Node.new(data)
	end

	def add(data)
		curr = @head
		while !curr.next_node.nil? do
			curr = curr.next_node
		end

		curr.next_node = Node.new(data)
	end

	def print_list
		curr = @head
		while !curr.next_node.nil? do
			puts curr.data
			curr = curr.next_node
		end

		puts curr.data
	end

	# challenge implemented here
	def nth_to_last(n)
		return @head.data if n <= 1

		curr = @head
		window_end = @head

		# establish the window
		(1..n-1).each do
			window_end = window_end.next_node
			raise 'Not Enough Nodes' if window_end.nil?
		end

		# move window until we get to the end
		while !window_end.next_node.nil? do
			window_end = window_end.next_node
			curr = curr.next_node
		end

		curr.data
	end
end

ll = LinkedList.new(1)

ll.add(2)
ll.add(3)
ll.add(4)
ll.add(5)

puts ll.nth_to_last(3)
puts ll.nth_to_last(1)
puts ll.nth_to_last(0)
puts ll.nth_to_last(6)
