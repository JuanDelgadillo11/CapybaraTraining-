#Scarlen Quinsamolle
Then(/^I should see "(.*?)" title in register page$/) do |title_form|
	expect(register_page.title.text).to eql title_form
end



Then(/^I should see the following fields:$/) do |label_form|
 label_form_array = label_form.raw
 label_form_array.each_with_index do |label, index|
 	p register_page.label_form_list[index]
 	p label.first
 	expect(register_page.label_form_list[index]).to eql label.first
 end
end



Then(/^I click on "(.*?)" button in register form$/) do |button_name|
	page.click_button button_name
end


When(/^all fields are empty in register form$/) do
	steps %{
		And I click on "Sign Up" button in register form
		   }
end

Then(/^I should see the following messages:$/) do |messages_list|
  messages_list_array = messages_list.raw
  messages_list_array.each_with_index do |message, index|
  	p register_page.error_message_list[index]
  	p message.first
  end
end

When(/^I fill in the form:$/) do |data_form|
  data_form_array = data_form.rows_hash
  register_page.fill_in_register_form(data_form_array)
  steps %{
		And I click on "Sign Up" button in register form
		   }
end

