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
				node.left = insert(node.left, data)
			else
				node.right = insert(node.right, data)
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

	def in_order(node)
		unless node.nil?
			in_order(node.right)
			puts "#{node.data} ,"
			in_order(node.left)
		end
	end

	def in_order_arr(node)
		return [] if node.nil?
		left = in_order_arr(node.left)
		current = [node.data]
		right = in_order_arr(node.right)

		return left + current + right
	end
end

class Node
	attr_accessor :data, :left, :right

	def initialize(data)
		@data  = data
	end
end

bst = BinarySearchTree.new(Node.new(4))

[3,2,6,5,1,9,12,8,21].each { |val| bst.insert(bst.root, val) }


puts bst.in_order_arr(bst.root).inspect
