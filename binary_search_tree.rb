class BinarySearchTree
	attr_accessor :root

	def initialize(root)
		@root = root
	end

	def insert(node, data)
		if node.nil?
			node = Node.new(data)
		else
			if data <= node.data
				node = insert(node.left, data)
			else
				node = insert(node.right, data)
			end
		end

		node
	end

	def lookup(node, data)
		if node.nil?
			return false
		elsif node.data == data
			return true
		end

		if data <= node.data
			lookup(node.left, data)
		else
			lookup(node.right, data)
		end
	end
end

class Node
	attr_accessor :data, :left, :right

	def initialize(data)
		@data  = data
	end
end
