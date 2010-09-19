class ActAsTaggableOnFromApp < ActiveRecord::Migration
  def self.up
    rename_column :tags, :tag, :name
    
    rename_column :taggings, :image_id, :taggable_id
    
    change_table :taggings do |t|
      t.string :tagger_type, :taggable_type, :context
      t.integer :tagger_id
      t.datetime :created_at
    end
    
    add_index :taggings, :tag_id
    add_index :taggings, [:taggable_id, :taggable_type, :context]
  end

  def self.down
    remove_index :taggings, [:taggable_id, :taggable_type, :context]
    remove_index :taggings, :tag_id
    
    remove_column :taggings, :created_at
    remove_column :taggings, :context
    remove_column :taggings, :taggable_type
    remove_column :taggings, :tagger_type
    remove_column :taggings, :tagger_id
    
    rename_column :taggings, :taggable_id, :image_id
    
    rename_column :tags, :name, :tag
  end
end