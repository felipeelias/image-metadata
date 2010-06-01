Factory.sequence(:image_name) do |n|
  "cat#{n}.png"
end

Factory.define(:image) do |i|
  i.image { Factory.next(:image_name) }
  i.tags "animal cat"
end