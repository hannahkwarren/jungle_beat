require './lib/jungle_beat'

RSpec.describe JungleBeat do 

  before(:each) do 
    @jb = JungleBeat.new
  end

  it "creates a new list instance on initialize" do 
    expect(@jb.list).to be_instance_of(LinkedList)
  end

  it "accepts a space-separated jungle beat string and assigns the words to nodes in order" do 
    @jb.append("deep doo dit")
    expect(@jb.list.head.data).to eq("deep")
    expect(@jb.list.head.next_node.data).to eq("doo")
    @jb.append("woo hoo shu")
    expect(@jb.list.find_tail.data).to eq("shu")
    expect(@jb.list.count).to eq(6)
  end

  it "plays the JungleBeats through the associated list" do 
    @jb.append("deep doo ditt woo hoo shu")
    expect(@jb.count).to eq(6)
    expect(@jb.list.count).to eq(6)
    @jb.play
  end

end

