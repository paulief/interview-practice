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

class StackWithMin < Stack
	attr_accessor :min_stack

	def initialize(data)
		super(data)
		@min_stack = Stack.new(data)
	end

	def push(data)
		super(data)
		@min_stack.push(data) if data <= @min_stack.top.data
	end

	def pop
		val = super.data

		if val == @min_stack.top.data
			@min_stack.pop
		end
	end

	def min
		@min_stack.top.data
	end
end
 
stk = StackWithMin.new(5)

stk.push(4)
p stk.min
stk.push(3)
stk.push(3)
p stk.min
stk.pop
stk.pop
p stk.min
