require 'spec_helper'

describe HomeController do
  integrate_views
  
  describe "GET 'search'" do
    it "should be successful" do
      get 'search'
      response.should be_success
      response.should render_template("search")
    end
    
    it "should search for 'cat'" do
      cat = Factory.stub(:image, :tags => "cat")
      dog = Factory.stub(:image, :tags => "dog")

      Image.should_receive(:all).with(:conditions => {:tags => "cat"}).and_return([cat])

      get 'search', :search => "cat"
      response.should be_success
      assigns[:images].should == [cat]
    end
    
    it "returns nothing if the search is empty" do
      get 'search'      
      response.should have_text(/no search/)
      assigns[:images].should be_nil
    end
  end
end
