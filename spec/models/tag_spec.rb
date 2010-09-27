require 'spec_helper'

describe Tag do
  before(:each) do
    @tag1    = Factory(:tag, :name => "a1")
    @tag2    = Factory(:tag, :name => "a2")
    @not_tag = Factory(:tag, :name => "b1")
  end

  it "should return all tags if no search was passed" do
    Tag.named_like("").should == [@tag1, @tag2, @not_tag]
  end
  
  it "should find tags starting with a" do
    Tag.named_like("a").should == [@tag1, @tag2]
  end
end