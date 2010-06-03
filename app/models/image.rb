class Image < ActiveRecord::Base
  validates_presence_of :image
  
  def self.tagged_with(tag)
    scoped(:conditions => ["tags like ?", "%#{tag}%"])
  end
end
