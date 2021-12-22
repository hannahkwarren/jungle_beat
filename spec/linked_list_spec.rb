require './lib/linked_list.rb'

RSpec.describe LinkedList do 

  before(:each) do
    @linked1 = LinkedList.new
  end

  it "has a head with a Node as the value" do
    expect(@linked1.head).to eq(nil)
    @linked1.append("doop")
    expect(@linked1.head).to be_instance_of(Node)
    expect(@linked1.head.next_node).to eq(nil)
    expect(@linked1.count).to eq(1)
  end

  it "provides string data" do 
    @linked1.append("doop")
    expect(@linked1.to_string).to eq("doop")
  end

end
