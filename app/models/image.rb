class Image < ActiveRecord::Base
  validates_presence_of :image
  
  has_many :taggings
  has_many :tags, :through => :taggings

  named_scope :not_tagged, :include => :tags, :conditions => { "tags.tag" => nil }  
  named_scope :tagged_with, lambda { |tag| { :joins => :tags, :conditions => ["tags.tag like ?", "%#{tag}%"] } }

end
