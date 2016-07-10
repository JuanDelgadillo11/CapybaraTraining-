# Capybara Project - Team B
# @author: Juan Delgadillo

Given(/^the testing page to start$/) do
  visit("http://phptravels.com/demo/")
  page.driver.browser.manage.window.maximize
end

Given(/^the "([^"]*)" page is selected$/) do |value|
  logon_page.press_logon_option(value)
end

Given(/^the administratror is logged$/) do
  logon_page.press_logon_option('ADMINISTRATOR')
  logon_page.fill_data('Username', 'admin@phptravels.com')		
  logon_page.fill_data('Password', 'demoadmin')
  logon_page.press_logon('Sign in')
  
end

When(/^I fill the user and password values on Logon page:$/) do |table|
  values=table.rows_hash
	values.each_pair do |name, value|
		value_found=logon_page.fill_data(name,value)		
	end
end

When(/^I press "([^"]*)" button on it$/) do |button|
  logon_page.press_logon(button)
end

Then(/^the user should be logged as "([^"]*)" in their page$/) do |value|
  value_found=admin_page.is_logged
  expect(value_found).to eq(value)
end