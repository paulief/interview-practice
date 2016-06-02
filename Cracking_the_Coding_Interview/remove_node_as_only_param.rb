# Implement an algorithm to delete a node in the middle of a single linked list, given only access to that node
# EXAMPLE
# Input: the node ‘c’ from the linked list a->b->c->d->e
# Result: nothing is returned, but the new linked list looks like a->b->d->e

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
	def delete_node(node)
		# copy data from the next node into this one
		node.data = node.next_node.data

		# delete next node
		node.next_node = node.next_node.next_node
	end
end
