require 'spec_helper'

describe Tag do
  it "with valid attributes" do
    tag = Factory(:tag)
    tag.should be_valid
  end
end
