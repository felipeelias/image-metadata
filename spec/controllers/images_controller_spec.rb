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
      get :update, :id => @image.to_param, :image => { :tag_names => @image.tag_names }

      assigns[:image].should == @image
      response.should be_redirect
    end
  end
end
