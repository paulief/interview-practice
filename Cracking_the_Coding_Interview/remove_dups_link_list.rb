# Write code to remove duplicates from an unsorted linked list FOLLOW UP
# How would you solve this problem if a temporary buffer is not allowed?

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
	def remove_dups
		existing_vals = {}

		curr = @head
		while !curr.next_node.nil? do
			# add the value to the hash
			existing_vals[curr.data] = 1

			if existing_vals[curr.next_node.data] == 1
				curr.next_node = curr.next_node.next_node
			else
				curr = curr.next_node
			end
		end
	end
end

ll = LinkedList.new(1)

ll.add(2)
ll.add(5)
ll.add(4)
ll.add(4)
ll.add(1)
ll.add(5)
ll.add(4)

ll.remove_dups
ll.print_list
