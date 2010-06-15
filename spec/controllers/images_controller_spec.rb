require 'spec_helper'

describe ImagesController do
  describe "editing a image" do
    it "should get #edit action" do
      image = Factory(:image)
      
      get :edit, :id => image.id
      
      assigns[:image].should == image
      response.should be_success
    end
  end
end
