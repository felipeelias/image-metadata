When /^I search for "(.+)"$/ do |search|
  fill_in "search", :with => search
  click_button "Find"
end

Given /^the following images$/ do |table|
  table.hashes.each do |hash|
    # hash["tags"] = hash["tags"].split(/\s/).map do |tag|
    #   Tag.find_or_create_by_name(:name => tag)
    # end
    Factory(:image, hash)
  end
end

Then /^I should see images with the tag "([^\"]*)"$/ do |tag|
  Then %Q{I should see "#{tag}" within "span.tags"}
end

Then /^I should not see images with the tag "([^\"]*)"$/ do |tag|
  Then %Q{I should not see "#{tag}" within "span.tags"}
end

Then /^the "([^"]*)" image should have tags "([^"]*)"$/ do |image, tags|
  with_scope("div.image span.tags") do
    page.should have_content(tags)
  end
end

When /^I edit tags from "([^"]*)" to "([^"]*)"$/ do |actual_tags, edited_tags|
  find("span.tags", :text => actual_tags).click
  fill_in("image[tag_list]", :with => edited_tags)
  find("input", :name => "image[tag_list]").trigger('blur')
end
