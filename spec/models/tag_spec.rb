require 'spec_helper'

describe Tag do
  before(:each) do
    @tag1    = Factory(:tag, :name => "a1")
    @tag2    = Factory(:tag, :name => "a2")
    @not_tag = Factory(:tag, :name => "b1")
  end

  it "should return all tags if no search was passed" do
    Tag.starting_with("").should == [@tag1, @tag2, @not_tag]
  end
  
  it "should return all tags if a blank search was passed" do
    Tag.starting_with(" ").should == [@tag1, @tag2, @not_tag]
  end
  
  it "should find tags starting with a" do
    Tag.starting_with("a").should == [@tag1, @tag2]
  end
end