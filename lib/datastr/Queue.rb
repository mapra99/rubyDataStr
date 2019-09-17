require 'linkedlist'

class Queue
  def initialize
    @li = LinkedList.new
    @n = 0
  end

  def add(number)
    @li.add(number)
    @n += 1
  end

  def remove
    if(@n == 0)
      return -1
    else
      value = @li.get(0)
      @li.remove(0)
      return value
    end
  end
end
