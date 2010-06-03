When /^I search for "(.+)"$/ do |search|
  fill_in "search", :with => search
  click_button "Find"
end

Given /^the following images$/ do |table|
  table.hashes.each do |hash|
    Factory(:image, hash)
  end
end

Then /^I should see images with the tag "([^\"]*)"$/ do |tag|
  Then %Q{I should see "#{tag}" within "span.tag"}
end

Then /^I should not see images with the tag "([^\"]*)"$/ do |tag|
  Then %Q{I should not see "#{tag}" within "span.tag"}
end
