require 'spec_helper'

describe TagsController do
  it "should return a list of all tags" do
    get :index, :format => :json
    response.should be_success
    response.should render_template("tags/index.json")
  end
  
  it "should return a list of tags starting with a" do
    Tag.should_receive(:starting_with).with("a").and_return([Factory(:tag, :name => "a1")])
    
    get :index, :q => "a", :format => :json
    
    assigns[:tags].should_not be_empty
    
    response.should be_success
    response.should render_template("tags/index.json")
  end
end