require 'spec_helper'

describe HomeController do
  describe "GET 'search'" do
    it "should be successful" do
      get 'search'
      response.should be_success
    end
  end
end
