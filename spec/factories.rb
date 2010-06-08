Factory.sequence(:image_name) do |n|
  "cat#{n}.png"
end

Factory.define(:image) do |i|
  i.image { Factory.next(:image_name) }
  i.tags { |tag| [tag.association(:tag)] }
end

Factory.define(:tag) do |t|
  t.tag { Factory.next(:tag_name) }
end

Factory.sequence(:tag_name) do |n|
  "tag#{n}"
end

Factory.define(:dog_image, :class => Image) do |dog|
  dog.image "dog.png"
  dog.tags do |tag|
    [ tag.association(:tag, :tag => "animal"),
      tag.association(:tag, :tag => "dog") ] 
  end
end

Factory.define(:cat_image, :class => Image) do |cat|
  cat.image "cat.png"
  cat.tags do |tag|
    [ tag.association(:tag, :tag => "animal"),
      tag.association(:tag, :tag => "cat") ] 
  end
end

Factory.define(:egg_image, :class => Image) do |egg|
  egg.image "egg.png"
  egg.tags { |tag| [ tag.association(:tag, :tag => "egg") ] }
end