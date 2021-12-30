class JungleBeat 

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(values)
    data = []
    data = values.to_s.split
    
    data.each do |piece|
      @list.append(piece)
    end
  end
end
