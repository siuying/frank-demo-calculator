Then /^I peform calculation:$/ do |table|
  table.hashes.each do |row|
    steps %Q{
      When I press "C" button
      And I have entered #{row[:input_1]} into the calculator
      And I press "#{row[:button]}" button
      And I have entered #{row[:input_2]} into the calculator
      And I press "=" button
      Then I see "#{row[:output]}" on the display
    }
  end
end

Then /^I have entered (\d+) into the calculator$/ do |numbers|
  numbers.split("").each do |num|
    steps %Q{And I press "#{num}" button}
  end

end