require 'spec_helper'

describe HomeController do
  it "should be successful" do
    get 'search'
    response.should be_success
    response.should render_template("search")
  end
  
  describe "GET a valid search" do
    it "should search for 'cat'" do
      cat = Factory.stub(:cat_image)
      dog = Factory.stub(:dog_image)

      Image.should_receive(:tagged_with).with("cat").and_return([cat])

      get 'search', :search => "cat"
      response.should be_success
      assigns[:images].should == [cat]
    end
  end
  
  describe "GET a invalid search" do
    integrate_views
    
    it "returns a message if the search is empty" do
      get 'search'      
      response.should have_text(%r{#{I18n.translate(:try_search_again)}})
      assigns[:images].should be_nil
    end

    it "returns a message if finds nothing" do
      Image.should_receive(:tagged_with).with("invalid").and_return([])
      
      get 'search', :search => "invalid"
      response.should have_text(%r{#{I18n.translate(:no_itens_found)}})
      assigns[:images].should be_empty
    end
  end
  
  describe "show images with no tags" do
    integrate_views
    
    it "should display a count of untagged images" do
      Image.should_receive(:count).and_return(2)
      get :index
      response.should have_tag("span.untagged", :text => I18n.translate(:image, :count => 2))
    end
  end
end
