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

  def prepend(data)
    @head = Node.new(data, @head)
  end

  def insert(index, data)
    if index > 0

      current = @head

      (index - 1).times do
        current = current.next_node
      end

      new_node = Node.new(data) 
      new_node.next_node = current.next_node
      current.next_node = new_node
    else
      prepend(data)
    end
  end

  def find_tail 
    if @head 
      current = @head 
      until current.next_node == nil 
        current = current.next_node 
      end
      current
    end
  end

  def find(index, num)
    current = @head

    index.times do
      current = current.next_node
    end

    countdown = num
    string = ""
    
    num.times do 
      string += current.data.to_s
      countdown -= 1
        if countdown != 0 
          string += " "
        end
        current = current.next_node
    end
      string

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
