When /^I search for "(.+)"$/ do |search|
  fill_in "search", :with => search
  click_button "Find"
end

Then /^I should see only images with the tag "(.+)"$/ do |searched|
  pending # express the regexp above with the code you wish you had
end

Given /^the following images$/ do |table|
  table.hashes.each do |hash|
    Factory(:image, hash)
  end
end

Then /^I should see images with the tag "([^\"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should not see images with the tag "([^\"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
