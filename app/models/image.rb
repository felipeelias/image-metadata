class Image < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 24
  
  validates_presence_of :image
  
  has_many :taggings
  has_many :tags, :through => :taggings

  named_scope :not_tagged, :include => :tags, :conditions => { "tags.tag" => nil }  
  named_scope :tagged_with, lambda { |tag| { :joins => :tags, :conditions => ["tags.tag like ?", "%#{tag}%"] } }
  
  def tag_names
    tags.map(&:tag).join(" ")
  end
  
  def tag_names=(tags)
    tag_list = []
    tags.split.each do |tag|
      tag_list << Tag.find_or_create_by_tag(tag)
    end

    self.tags = tag_list
  end
end
