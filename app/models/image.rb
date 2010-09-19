class Image < ActiveRecord::Base
  acts_as_taggable
  
  cattr_reader :per_page
  @@per_page = 32
  
  named_scope :not_tagged, :include => :tags, :conditions => { "tags.name" => nil }
  
  validates_presence_of :image
end
