# Start with your code from last challenge.
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  def initialize
    @head = nil
    #@tail = nil
  end

  def add(value)
    if @head.nil?
      @head = Node.new(value,nil)
      #@tail = @head
    else
      current_node = @head
      while !current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(value)
      #@tail = Node.new(value)
    end
  end

  def add_at(index, value)
    if @head.nil?
      if index == 0
        @head = Node.new(value, nil)
      else
        return nil
      end
    else
      current_node = @head
      (index-1).times do
        current_node = current_node.next_node
      end

      new_node = Node.new(value, current_node.next_node)
      current_node.next_node = new_node
    end
  end

  def remove(index)
    current_node = @head
    (index-1).times do
      current_node = current_node.next_node
    end
    node_to_remove = current_node.next_node
    current_node.next_node = node_to_remove.next_node
  end

  def get(index)
    if @head.nil?
      return nil
    else
      current_node = @head
      index.times do
        current_node = current_node.next_node
      end
      return current_node.value
    end
  end
end
