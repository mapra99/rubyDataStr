require 'linkedlist'
class Stack
  def initialize
    @li = LinkedList.new
  end
  def push(number)
    @li.add_at(0, number)
  end

  def pop
    @li.remove(0)
  end

  def empty?
    @li.get(0).nil? ? true : false
  end
end
