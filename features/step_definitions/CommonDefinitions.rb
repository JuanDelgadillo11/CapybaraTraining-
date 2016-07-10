# Capybara Project - Team B
# @author: Juan Delgadillo

require 'E:\capybara\para comenzar el proyectov1\projectCapybara\features\support\pages\MainWindow'
require 'E:\capybara\para comenzar el proyectov1\projectCapybara\features\support\pages\DocsPage'

Given(/^I open the testing page$/) do
  visit("http://phptravels.com/demo/")
  page.driver.browser.manage.window.maximize
end

When(/^I press the option "(.*?)" in the top menu$/) do |option|
  @value=option 
  main_page.select_Top_Menu_Option(@value)    
end

Then(/^the following value should be displayed at the begining:$/) do |expected_values_leftMenu|
	table=expected_values_leftMenu.raw
     table.each do |menuValue|       
      docs_page.validate_header_option(menuValue.first) 
    end 
end

Then(/^the following values should be displayed in left menu:$/) do |expected_values_leftMenu|
	table=expected_values_leftMenu.raw
	
     table.each do |menuValue| 
		p menuValue
			p menuValue.first
     value_found=docs_page.validate_leftMenu_options(menuValue.first) 
	 # expect(value_found).to eq(menuValue.first)
    end 
end

Given(/^the "([^"]*)" page$/) do |value|
  logon_page.press_logon_option(value)
end

When(/^I fill the user and password values:$/) do |table|
  values=table.rows_hash
	values.each_pair do |name, value|
		value_found=logon_page.fill_data(name,value)		
	end
end

When(/^I press "([^"]*)" button$/) do |button|
  logon_page.press_logon(button)
end

Then(/^the user should be logged as "([^"]*)"$/) do |value|
  value_found=admin_page.is_logged
  expect(value_found).to eq(value)
end

When(/^I select "([^"]*)" option$/) do |link_option|
  admin_page.click_option(link_option)  
end

When(/^I press on "([^"]*)" link$/) do |link_sub_option|
  @sub_option_name_found =admin_page.click_sub_option(link_sub_option)
  #add validation
end

Then(/^"([^"]*)" should be displayed in the midle pane$/) do |header|
  value_found=admin_page.validate_header_option(header)
  expect(value_found).to eq(header)
end

Then(/^if user press "([^"]*)" button$/) do |buton_name|
  admin_page.press_add_button(buton_name)
end

Then(/^fill the First Name with "([^"]*)"$/) do |first_name_value|
  admin_page.fill_first_name(first_name_value)
end

Then(/^fill the Last Name with "([^"]*)"$/) do |last_name_value|
   admin_page.fill_last_name(last_name_value)
end

Then(/^fill the Email with "([^"]*)"$/) do |email_value|
   admin_page.fill_email(email_value)
end

Then(/^fill the Password with "([^"]*)"$/) do |password_value|
   admin_page.fill_password(password_value)
end

Then(/^fill the Mobile Number with "([^"]*)"$/) do |mobile_number_value|
   admin_page.fill_mobile_number(mobile_number_value)
end

Then(/^select the Country equal to "([^"]*)"$/) do |country_value|
   admin_page.select_country(country_value)
end

Then(/^fill the Address one with "([^"]*)"$/) do |address1|
 admin_page.fill_address_one(address1)
end

Then(/^fill the Address two with "([^"]*)"$/) do |address2|
  admin_page.fill_address_two(address2)
end

Then(/^select the Status equal to "([^"]*)"$/) do |status_value|
  admin_page.select_status(status_value)
end

Then(/^check the following Add permissions:$/) do |add_list_permissions|
  table=add_list_permissions.raw
     table.each do |permissionValue|       
      admin_page.check_add_option(permissionValue.first) 
    end
end

Then(/^check the following Edit permissions:$/) do |edit_list_permissions|
  table=edit_list_permissions.raw
     table.each do |permissionValue|       
      admin_page.check_edit_option(permissionValue.first) 
    end
end

Then(/^check the following Remove permissions:$/) do |remove_list_permissions|
  table=remove_list_permissions.raw
     table.each do |permissionValue|       
      admin_page.check_remove_option(permissionValue.first) 
    end
end

Then(/^press Submit button$/) do
  admin_page.press_submit_button
end

Then(/^new Admin should be created and listed on Admins Management$/) do
  @amount_found=admin_page.review_new_user_data
  expect(@amount_found.to_s).to eq("1")
end

