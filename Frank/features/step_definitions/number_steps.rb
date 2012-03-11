Then /^I see "([^"]*)" on the display$/ do |number|
  selector = "view marked:'display label'"
  value = frankly_map(selector, 'text').first
  value.should == number
end