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
      cat = Factory(:cat_image)
      egg = Factory(:egg_image)

      search = Image.tagged_with("egg")
      search.should == [egg]
    end

    it "should find for multiple tags" do
      cat = Factory(:cat_image)
      dog = Factory(:dog_image)
      egg = Factory(:egg_image)

      search = Image.tagged_with("animal")
      search.should == [cat, dog]
    end
  end
  
  context "detecting tagged images" do
    it "should find images with no tags" do
      cat = Factory(:cat_image)
      dog = Factory(:dog_image, :tags => [])
    
      search = Image.not_tagged
      search.should == [dog]
    end
  end
end
