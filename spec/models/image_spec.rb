require 'spec_helper'

describe Image do
  context "with invalid attributes" do
    it do
      invalid_image = Factory.build(:image, :image => nil)
      invalid_image.should_not be_valid
    end    
  end

  context "with valid attributes" do
    it do
      invalid_image = Factory.build(:image)
      invalid_image.should be_valid
    end    
  end
  
  context "searching" do
    it "should find for one tag" do
      cat = Factory(:image) # :tags => animal cat
      egg = Factory(:image, :image => "egg.png", :tags => "egg")

      search = Image.tagged_with("egg")
      search.should == [egg]
    end

    it "should find for multiple tags" do
      cat = Factory(:image) # :tags => animal cat
      dog = Factory(:image, :image => "dog.png", :tags => "animal dog")
      egg = Factory(:image, :image => "egg.png", :tags => "egg")

      search = Image.tagged_with("animal")
      search.should == [cat, dog]
    end
  end
end
