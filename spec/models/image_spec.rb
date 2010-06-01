require 'spec_helper'

describe Image do
  context "with invalid attributes" do
    it do
      invalid_image = Factory.build(:image, :image => nil)
      invalid_image.should_not be_valid
    end    
  end
end
