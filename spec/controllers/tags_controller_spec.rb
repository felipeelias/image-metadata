require 'spec_helper'

describe TagsController do
  integrate_views
  
  it "should return a list of all tags" do
    get :index, :format => "json"
    response.should be_success
  end
  
  it "should return a list of tags starting with a" do
    Tag.should_receive(:named_like).with("a").and_return([Factory(:tag, :name => "a1")])
    
    get :index, :format => "json", :term => "a"
    
    assigns[:tags].should_not be_nil
    
    response.should be_success
  end
end