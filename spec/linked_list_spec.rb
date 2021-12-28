require './lib/linked_list.rb'

RSpec.describe LinkedList do 

  before(:each) do
    @linked1 = LinkedList.new
  end

  # let(:ash) { Trainer.find_or_create_by!... }

  it "has a head with a Node as the value" do
    expect(@linked1.head).to eq(nil)
    @linked1.append("doop")
    expect(@linked1.head).to be_instance_of(Node)
    expect(@linked1.head.next_node).to eq(nil)
    expect(@linked1.count).to eq(1)
  end
  
  it "appends a new node to the end of the list" do 
    expect(@linked1.head).to eq(nil)
    @linked1.append("doop")
    @linked1.append("deep")
    @linked1.append("bam")
    expect(@linked1.head.data).to eq("doop")
    expect(@linked1.find_tail.data).to eq("bam")
    expect(@linked1.count).to eq(3)
  end

  it "provides all data values as one string data" do 
    @linked1.append("doop")
    expect(@linked1.to_string).to eq("doop")
    @linked1.append("deep")
    expect(@linked1.to_string).to eq("doop deep")
  end

  it "prepends a node at the beginning of the list" do 
    @linked1.append("doop")
    @linked1.prepend("pah")
    expect(@linked1.head.data).to eq("pah")
  end

  it "inserts a node at a specified position" do
    @linked1.append("doop")
    @linked1.append("deep")
    @linked1.append("dip")
    @linked1.insert(2, "pah")
    expect(@linked1.to_string).to eq("doop deep pah dip")
  end

  it "finds specified series of node data starting at a specified index" do
    @linked1.append("doop")
    @linked1.append("deep")
    @linked1.append("shu")
    @linked1.append("dip")
    @linked1.append("pah")
    expect(@linked1.find(1, 3)).to eq("deep shu dip")
  end

end
