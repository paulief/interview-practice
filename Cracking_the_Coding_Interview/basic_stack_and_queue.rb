class Node
	attr_accessor :data, :next_node

	def initialize(data)
		@data = data
	end
end

class Stack
	attr_accessor :top

	def initialize(data)
		@top = Node.new(data)
	end

	def pop
		if !@top.nil?
			curr_top = @top
			@top = curr_top.next_node
			return curr_top
		end

		nil
	end

	def push(data)
		new_node = Node.new(data)

		new_node.next_node = @top
		@top = new_node
	end
end

class Queue
	attr_accessor :first, :last

	def initialize(data)
		@first, @last = Node.new(data)
	end

	def enqueue(data)
		new_node = Node.new(data)

		if first.nil?
			@first, @last = new_node
		else
			new_node.next_node = @last
			@last = new_node
		end
	end

	def dequeue
		if first.nil?
			nil
		else
			curr_first = @first
			@first = @first.next_node
			curr_first
		end
	end
end
