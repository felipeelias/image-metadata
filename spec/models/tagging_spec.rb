require 'spec_helper'

describe Tagging do
  before(:each) do
    @valid_attributes = {
      :tag_id => 1,
      :image_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Tagging.create!(@valid_attributes)
  end
end
