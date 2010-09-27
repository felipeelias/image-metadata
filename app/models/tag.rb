class Tag
  def self.starting_with(tag = nil)
    filter = {:conditions => ["name like ?", "#{tag}%"]} if tag && !tag.blank?
    all(filter)
  end
end