class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

def reverse_node(listed, rev_node=nil)
    first_node = listed.next_node
    listed.next_node = rev_node

    if first_node
        reverse_node(first_node, listed)
    else
        listed
    end
end


def print_values(list_node)
    if list_node
        print "#{list_node.value} --> "
        print_values(list_node.next_node)
    else
        print "nil\n"
        return
    end
end

# class Stack 
#     attr_reader :data

#     def initialize
#         @data = nil
#     end

#     # PUSH VAL ONTO STACK

#     def push(value)
#             @data = LinkedListNode.new(value, @data)
#     end

#     def pop
#         raise "Empty" if is_empty?
#         value = @data.value
#         @data = @data.next_node
#         value
#     end

#     def is_empty?
#         @data.nil?
#     end 
#   end
# def reverse_list(list)
#     stack = Stack.new

#     while list 
#         stack.push(list.value)
#         list = list.next_node
#     end
    
#     stack.data
    
# end


node1 = LinkedListNode.new(36)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
  
  puts "-------"
  
  revlist = reverse_node(node3)
  
  print_values(revlist)