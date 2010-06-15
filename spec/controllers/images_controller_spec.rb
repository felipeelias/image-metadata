require 'spec_helper'

describe ImagesController do
  describe "editing a image" do
    before :all do
      @image = Factory(:image)
    end
    
    it "should get #edit action" do      
      get :edit, :id => @image.to_param
      
      assigns[:image].should == @image
      response.should be_success
    end
    
    it "should #update" do
      get :update, :id => @image.to_param, :image => @image
      
      assigns[:image].should == @image
      response.should be_success
    end
  end
end
