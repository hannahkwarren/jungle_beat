require './lib/node'

RSpec.describe Node do
  
  before(:each) do
    @node1 = Node.new("plop")
  end

  it "has expected instance variables" do
    expect(@node1.data).to eq("plop")
    expect(@node1.next_node).to eq(nil)
  end
end
