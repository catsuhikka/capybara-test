Given(/^I am on the Google homepage$/) do
  visit 'http://www.google.com'
end

Then(/^I will search for "([^"]*)"$/) do |search|
  fill_in 'lst-ib', :with => 'Твой дед'
  click_on('Поиск')
end

Then(/^I should see "([^"]*)"$/) do |search|
  expect(page).to have_content('Твой дед')
end

Then(/^I will click the about link$/) do
  page.save_screenshot('screenshot.jpg')
  within(:css, "#search") do
  	  click_link("Твой дед", :match => :first)
      #first(:link, 'Твой дед').click
   end
end