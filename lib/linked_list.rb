class LinkedList 

  attr_reader :head

  def initialize
    @head = nil
  end
  
  def append(data) 
    if @head
      find_tail.next_node = Node.new(data)
    else
      @head = Node.new(data)
    end
  end

  def find_tail 
    if @head 
      current = head 
      until current.next_node == nil 
        current = current.next_node 
      end
      current
    end
  end

  def count
    counter = 0
    if @head
      current = @head
      while current != nil
        counter += 1
        current = current.next_node 
      end
    end
    counter
  end

  def to_string

    if @head
      current = @head
      string = ""

      while current != nil 
        # require 'pry'; binding.pry
        string += current.data.to_s
        if current.next_node != nil 
          string += " "
        end
        current = current.next_node
      end

    end
    string
  end
end
