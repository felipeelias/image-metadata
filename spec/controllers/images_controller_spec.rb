require 'spec_helper'

describe ImagesController do

  #Delete these examples and add some real ones
  it "should use ImagesController" do
    controller.should be_an_instance_of(ImagesController)
  end


  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
  end

  describe "GET 'update'" do
    it "should be successful" do
      get 'update'
      response.should be_success
    end
  end
end
