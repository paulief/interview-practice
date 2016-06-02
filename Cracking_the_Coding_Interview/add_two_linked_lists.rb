# You have two numbers represented by a linked list, where each node contains a single digit
# The digits are stored in reverse order, such that the 1’s digit is at the head of the list
# Write a function that adds the two numbers and returns the sum as a linked list
# EXAMPLE
# Input: (3 -> 1 -> 5) + (5 -> 9 -> 2)
# Output: 8 -> 0 -> 8

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

	# method used in the string implementation
	def to_s
		curr = @head
		result = @head.data.to_s

		while !curr.next_node.nil? do
			curr = curr.next_node
			result << curr.data.to_s
		end

		result
	end
end

# challenge implemented here
def add_two_lists_string(list1, list2)
	num1 = list1.to_s.reverse.to_i
	num2 = list2.to_s.reverse.to_i

	num1 + num2
end

def add_two_lists_integers(list1, list2)
	curr1  = list1.head
	curr2  = list2.head
	pow10  = 0
	result = 0
	carry  = 0

	loop do
		dig_sum = curr1.data + curr2.data

		if dig_sum >= 10
			carry = 1
			dig_sum = dig_sum - 10
		else
			carry = 0
		end

		result += dig_sum * (10 ** pow10)
		pow10  += 1

		break unless !curr1.next_node.nil? || !curr2.next_node.nil?

		curr1.next_node.nil? ? curr1 = Node.new(0) : curr1 = curr1.next_node
		curr2.next_node.nil? ? curr2 = Node.new(0) : curr2 = curr2.next_node
	end

	result
end


list1 = LinkedList.new(4)
list1.add(3)
list1.add(2)
list1.add(1)

list2 = LinkedList.new(3)
list2.add(2)
list2.add(1)

p add_two_lists_string(list1, list2)
p add_two_lists_integers(list1, list2)
