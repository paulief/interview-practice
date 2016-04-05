# https://www.hackerrank.com/contests/programming-interview-questions/challenges/m-th-to-last-element

class Node
    attr_accessor :val, :forward, :backward
    
    def initialize(val)
        @val = val
    end
end

class LinkedList
    attr_accessor :head, :tail

    def initialize(head)
        @head = head
        @tail = head
    end
    
    def add(node)
        @head.backward = node
        node.forward   = @head
        @head          = node
    end
end

def get_last_node(list)
    curr = list.head
    while !curr.forward.nil?
        curr = curr.forward
    end
    
    curr
end

def list_from_vals(vals)
    list = LinkedList.new(Node.new(vals[0]))
    
    rest = vals[1..vals.length-1]
    
    unless rest.empty?
        rest.each { |val| list.add(Node.new(val)) }
    end
    
    # make it circular
    list.head.backward = list.tail
    list.tail.forward  = list.head
    
    list
end

def get_mth_to_last(list, m)
    curr = list.head

    (1..m).each do
         curr = curr.backward
    end
    
    curr.val
end

# code execution starts here

inp  = $stdin.read.split("\n")
m    = Integer(inp[0])
vals = inp[1].split(' ')

if m > vals.length
    puts 'NIL'
else
    list = list_from_vals(vals)
    puts get_mth_to_last(list, m)
end

