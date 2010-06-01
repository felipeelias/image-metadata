require 'spec_helper'

describe Image do
  before(:each) do
    @valid_attributes = {
      :image => "value for image",
      :tags => "value for tags"
    }
  end

  it "should create a new instance given valid attributes" do
    Image.create!(@valid_attributes)
  end
end
