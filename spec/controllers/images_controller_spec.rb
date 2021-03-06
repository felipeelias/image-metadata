require 'spec_helper'

describe ImagesController do
  it "should GET /images" do
    @image = Factory(:image)
    get :index
    
    assigns[:images].should == [@image]
    response.should be_success
  end
  
  describe "editing a image" do
    before :each do
      @image = Factory(:image)
    end
    
    it "should get #edit action" do      
      get :edit, :id => @image.to_param
      
      assigns[:image].should == @image
      response.should be_success
    end
    
    it "should #update" do
      get :update, :id => @image.to_param, :image => { :tag_list => @image.tag_list }

      assigns[:image].should == @image
      response.should be_redirect
    end
  end
  
  describe "filtering tagged/untagged images" do
    before :each do
      @tagged = Factory(:image)
      @not_tagged = Factory(:image, :tag_list => nil)
    end
    
    it "should filter tagged images" do
      get :index, :filter => "tagged"
      assigns[:images].should == [@tagged]
    end

    it "should filter untagged images" do
      get :index, :filter => "untagged"
      assigns[:images].should == [@not_tagged]
    end
  end
end
