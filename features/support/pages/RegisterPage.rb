#Scarlen Quinsamolle
def register_page
	register_page ||= RegisterPage.new
end

class RegisterPage
	include Capybara::DSL

	attr_reader :title, :label_form_list

	def initialize
		@title = page.find('.panel-heading')
		@label_list = page.all('label')


		@label_form_list = Array.new
		@label_list.each {|label| @label_form_list.push label.text}
		@error_message_list = Array.new
	end

	def error_message_list
		@messages = page.find('.alert.alert-danger').all('p')
		@messages.each {|message| @error_message_list.push message.text}
		return @error_message_list
	end


	def fill_in_register_form form_values
		page.fill_in('firstname', :with => form_values['first_name'])
		page.fill_in('lastname', :with => form_values['last_name'])
		page.fill_in('phone', :with => form_values['mobile_number'])
		page.fill_in('email', :with => form_values['email'])
		page.fill_in('password', :with => form_values['password'])
		page.fill_in('confirmpassword', :with => form_values['confirm_password'])
	end




end