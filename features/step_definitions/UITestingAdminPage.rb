# Capybara Project - Team B
# @author: Juan Delgadillo

Then(/^the user should be logged as "([^"]*)" in their respective page$/) do |value|
  value_found=admin_page.is_logged
  @value=value
  expect(value_found).to eq(value) 
end

Then(/^account should be displayed in Dashboard panel$/) do 
  value_found=admin_page.is_logged
  expect(value_found).to eq(@value) 
end

Then(/^the following options should be listed:$/) do |expected_values_leftMenu|
	table=expected_values_leftMenu.raw
	table.each do |linkValue| 
		p linkValue
		p linkValue.first
		information_found=admin_page.validate_left_menu_links(linkValue.first) 
		#expect(information_found).to eq(linkValue.first) 
    end
end