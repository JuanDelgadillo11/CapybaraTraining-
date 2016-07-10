# Scarlen Quinsamolle
def join_now_page
	@join_now_page ||= JoinNowPage.new
end
class JoinNowPage
	include Capybara::DSL
	attr_reader :title, :input_label_list

	def initialize
		# Element's selectors: id, class
		@title = page.find('h1')
		@id_nav_bar = 'nav'
		@css_panel_heading = '.panel-heading'
		@css_panel_title = '.panel-title'
		@css_form = '.form-group'

		#Static elements
		@label_list = page.all('label')
		@field_first_name = page.find_by_id('firstname')
		@field_last_name = page.find_by_id('lastname')
		@field_company_name = page.find_by_id('companyname')
		@field_email_address = page.find_by_id('email')
		@field_password = page.find_by_id('inputNewPassword1')
		@field_confirm_password = page.find_by_id('inputNewPassword2')
		@field_address1 = page.find_by_id('address1')
		@field_address2 = page.find_by_id('address2')
		@field_city = page.find_by_id('city')
		@field_state_region = page.find_by_id('stateinput')
		@field_zip_code = page.find_by_id('postcode')
		@field_country = page.find_by_id('country')
		@field_phone_number = page.find_by_id('phonenumber')
		@field_find_us = page.find_by_id('customfield1')
		@field_mobile_number = page.find_by_id('customfield2')
		@input_captcha = page.find_by_id('inputCaptcha')

	 # Elements content
	 	@error_messages_list = nil
		@input_label_list = Array.new
		@label_list.each {|label| @input_label_list.push label.text}
		
	end

	def menu_options_list(link)
		if page.find(@id_nav_bar).find_link(link) != nil
			return true
		else
		return false
		end
 	end

 	def find_title_in_left_side(subtitle)
 		page.find(@css_panel_title, :text => subtitle)
 		return true
 	end

 	def fill_register_form (regist_data)
 		@field_first_name.set (regist_data['first_name'])
 		@field_last_name.set (regist_data['last_name'])
 		@field_company_name.set (regist_data['company_name'])
 		@field_email_address.set (regist_data['email_address'])
 		@field_password.set (regist_data['password'])
 		@field_confirm_password.set (regist_data['confirm_password'])
 		@field_address1.set (regist_data['address1'])
 		@field_address2.set (regist_data['address2'])
 		@field_city.set (regist_data['city'])
 		@field_state_region.set (regist_data['state_region'])
 		@field_zip_code.set (regist_data['zip_code'])
 		# @field_country.select (regist_data['country'])
 		@field_phone_number.set (regist_data['phone_number'])
 		# @field_find_us.select (regist_data['find_us'])
 		@field_mobile_number.set (regist_data['mobile_number'])
 		@input_captcha.set (regist_data['captcha'])
		
 	end

 	def click_register_button
 		page.find('.btn').click
 		
 	end

 	def error_message
 		@messages = page.find('.alert.alert-danger').all('li')
 		@error_messages_list = Array.new
		@messages.each {|message| @error_messages_list.push message.text}
		return @error_messages_list
 	end


		


end