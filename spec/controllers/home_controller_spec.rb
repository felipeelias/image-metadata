require 'spec_helper'

describe HomeController do

  #Delete these examples and add some real ones
  it "should use HomeController" do
    controller.should be_an_instance_of(HomeController)
  end


  describe "GET 'search'" do
    it "should be successful" do
      get 'search'
      response.should be_success
    end
  end
end
