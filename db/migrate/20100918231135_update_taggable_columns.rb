class UpdateTaggableColumns < ActiveRecord::Migration
  def self.up
    Tagging.update_all(:taggable_type => "Image", :context => "tags")
  end

  def self.down
  end
end
