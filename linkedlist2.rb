class LinkedListNode
    attr_accessor :value, :next_node
  
    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
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

    def reverse_list(list_node, previous=nil)
        my_node = list_node.next_node
        list_node.next_node = previous
        if my_node
           reverse_list(my_node, list_node)
        else
            list_node
        end
              
    end

    node1 = LinkedListNode.new(37)
    node2 = LinkedListNode.new(99, node1)
    node3 = LinkedListNode.new(12, node2)
    node4 = LinkedListNode.new(24, node3)
    
    print_values(node4)
    puts "--------"
    revlist = reverse_list(node4)
    print_values(revlist)