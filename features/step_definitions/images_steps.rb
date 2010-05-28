When /^I search for "(.+)"$/ do |search|
  fill_in "search", :with => search
  click_button "Find"
end

Then /^I should see only images with the tag "(.+)"$/ do |searched|
  pending # express the regexp above with the code you wish you had
end
