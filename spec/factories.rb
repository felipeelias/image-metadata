Factory.sequence(:image_name) do |n|
  "cat#{n}.png"
end

Factory.define(:image) do |i|
  i.image { Factory.next(:image_name) }
  i.tag_list { |tag| [tag.association(:tag)] }
end

Factory.define(:tag) do |t|
  t.name { Factory.next(:tag_name) }
end

Factory.sequence(:tag_name) do |n|
  "tag#{n}"
end

Factory.define(:dog_image, :class => Image) do |dog|
  dog.image "dog.png"
  dog.tag_list do |tag|
    [ Tag.find_or_create_by_name(:name => "animal"),
      Tag.find_or_create_by_name(:name => "dog") ] 
  end
end

Factory.define(:cat_image, :class => Image) do |cat|
  cat.image "cat.png"
  cat.tag_list do |tag|
    [ Tag.find_or_create_by_name(:name => "animal"),
      Tag.find_or_create_by_name(:name => "cat") ] 
  end
end

Factory.define(:egg_image, :class => Image) do |egg|
  egg.image "egg.png"
  egg.tag_list { |tag| [ Tag.find_or_create_by_name(:name => "egg") ] }
end