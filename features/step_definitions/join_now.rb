#Scarlen Quinsamolle
Given (/I click on "(.*?)" button in main page/) do |button|
	page.click_button button
end

Given(/^I see "([^"]*)" title in join now$/) do |title|
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  expect(join_now_page.title.text).to eql title
end

Then(/^I should see the following menus:$/) do |menu_options|
  menu_options_array = menu_options.raw
  menu_options_array.each do |row|
    expect(join_now_page.menu_options_list(row.first)).to be true
  end
end



Then(/^I should see "([^"]*)" title in the left side$/) do |subtitle|
  expect(join_now_page.find_title_in_left_side(subtitle)).to be true
end


Then(/^I should see$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the following labels in the form:$/) do |label_list|
  label_list_array = label_list.raw
    label_list_array.each_with_index do |label, index|
    expect(join_now_page.input_label_list[index]).to eql label.first 
    end
end

Then(/^I should see Register form$/) do
  p "pending"
end

When(/^I fill in the form and the captcha code is invalid:$/) do |registration_data|
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  @registration_data_array = registration_data.rows_hash
  join_now_page.fill_register_form(@registration_data_array)
  join_now_page.click_register_button
end

Then(/^I should see "(.*?)"error should ocurr$/) do |message|
  p join_now_page.error_message
  expect(join_now_page.error_message).to eql(message)
 
end

When(/^I fill in the form and the phone number is invalid:$/) do |registration_data|
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  @registration_data_array = registration_data.rows_hash
  join_now_page.fill_register_form(@registration_data_array)
  join_now_page.click_register_button

end



Then(/^I should see the following errors message:$/) do |messages|
  message_array = messages.raw
  message_array.each_with_index do |message, index|
    expect(join_now_page.error_message[index]).to eql message.first
  end
end





