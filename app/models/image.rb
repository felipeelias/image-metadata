class Image < ActiveRecord::Base
  validates_presence_of :image
  
  has_many :taggings
  has_many :tags, :through => :taggings
  
  def self.tagged_with(tag)
    scoped(:conditions => ["tags like ?", "%#{tag}%"])
  end
end
