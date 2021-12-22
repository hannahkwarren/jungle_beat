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
    s = ""

    if @head
      current = @head

      while current != nil 
        string = s + current.data.to_s
        current = current.next_node
      end

    end
  string
  end
end
