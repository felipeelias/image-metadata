class TagFinder
  def self.without_association
    Tag.find_by_sql("select id, name from tags where id not in (select tag_id from taggings)")
  end
end