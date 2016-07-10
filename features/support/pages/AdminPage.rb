# Capybara Project - Team B
# @author: Juan Delgadillo

def admin_page
	@admin_page ||= AdminPage.new
end
class AdminPage
	include Capybara::DSL
	
	def initialize

	end
	
	# @author: Juan Delgadillo
	Capybara.add_selector(:link_path) do
      xpath { |arg| "//*[@id='social-sidebar-menu']/li[#{arg}]/a/span" }
	end
	
	# @author: Juan Delgadillo
	Capybara.add_selector(:link_path_pages) do
      xpath { |arg| "//*[@id='social-sidebar-menu']/li[#{arg}]/a/span[1]" }
	end
	
	Capybara.add_selector(:link_path_sub_option) do
	 xpath { |arg| "//*[@id='Accounts']/li[#{arg}]/a" }
	end
	
	# @author: Juan Delgadillo
	def is_logged
		new_window = windows.last
 		   page.within_window new_window do
			p find('.slimScrollDiv').find('.social-sidebar-content').find('.user').find('span').text
			return find('.slimScrollDiv').find('.social-sidebar-content').find('.user').find('span').text
				
		   end		
	end
	
	# @author: Juan Delgadillo
	def validate_left_menu_links(link_name)
		new_window = windows.last
 		   page.within_window new_window do
			
			@value=link_name
				case @value
					when "Frontend"
						page.find(:link_path,1)
					when "Accounts"
						page.find(:link_path,3)
					when "General"
						page.find(:link_path,4)
					when "CMS"
						page.find(:link_path,5)
					when "Tours"
						page.find(:link_path,6)
					when "Blog"
						page.find(:link_path,7)
					when "Cars"
						page.find(:link_path,8)	
					when "Hotels"
						page.find(:link_path,9)
					when "Offers"
						page.find(:link_path,10)
					when "Coupons"
						page.find(:link_path,11)
					when "Updates"
						page.find(:link_path_pages,2)
					when "Locations"
						page.find(:link_path_pages,12)
					when "Newsletter"
						page.find(:link_path_pages,13)
					when "Bookings"
						page.find(:link_path_pages,14)	
				end		
			
		   end		
	end
	
	# @author: Juan Delgadillo
	def click_option(link_name)
		new_window = windows.last
		page.within_window new_window do
			if link_name=='Accounts'
				click_link("Accounts")
			end
		end
	end
	
	# @author: Juan Delgadillo
	def click_sub_option(link_name)
		new_window = windows.last
 		   page.within_window new_window do
				@value_sub_option=link_name
				case @value_sub_option
					when "Admins"
						page.find(:link_path_sub_option,1).text
						
					when "Suppliers"
						page.find(:link_path_sub_option,2).text
						
					when "Customers"
						page.find(:link_path_sub_option,3).text
						
					when "Guest Customers"
						page.find(:link_path_sub_option,4).text
							
				end
				
				
		   end
	end
	
	# @author: Juan Delgadillo
	def validate_header_option(header)
		new_window = windows.last
 		   page.within_window new_window do
		   	@header_to_find=header
				case @header_to_find
					when "Admins Management"
						page.find(:xpath,'//*[@id="content"]/div/div[1]',text=> @header_to_find).text
					when "Suppliers Management"
						page.find(:xpath,'//*[@id="content"]/div/div[1]',text=> @header_to_find).text
				end			   
		   end
	end
	
	# @author: Juan Delgadillo
	def press_add_button(button_name)
			new_window = windows.last
 		   page.within_window new_window do
		     if button_name=='Add'
			  page.find(:xpath,'//*[@id="content"]/div/form/button',wait:3).click
		     end
	       end
    end	
	
	# @author: Juan Delgadillo
	def fill_first_name(first_name_value)
		new_window = windows.last
 		   page.within_window new_window do
		    page.fill_in 'fname', :with=> first_name_value	     
	       end
    end	
	
	# @author: Juan Delgadillo
	def fill_last_name(last_name_value)
		new_window = windows.last
 		   page.within_window new_window do
		    page.fill_in 'lname', :with=> last_name_value	     
	       end
    end
	
	# @author: Juan Delgadillo
    def fill_email(email_value)
		new_window = windows.last
 		   page.within_window new_window do
		    page.fill_in 'email', :with=> email_value	     
	       end
    end	
	
	# @author: Juan Delgadillo
	def fill_password(password_value)
		new_window = windows.last
 		   page.within_window new_window do
		    page.fill_in 'password', :with=> password_value	     
	       end
    end
	
	# @author: Juan Delgadillo
	def fill_mobile_number(mobile_number_value)
		new_window = windows.last
 		   page.within_window new_window do
		    page.fill_in 'mobile', :with=> mobile_number_value	     
	       end
    end
	
	# @author: Juan Delgadillo
	def select_country(country_value)
		new_window = windows.last
 		   page.within_window new_window do
		    @country_value=country_value
			p page.find(".select2-chosen",:text=> 'Please Select').click
  		    page.find(:xpath, '//*[@id="select2-drop"]/div/input').set(@country_value)
     		aux1=page.find(:xpath, '//*[@id="select2-drop"]/div/input').native
			aux1.send_keys(:enter) 
	       end
    end
	
	# @author: Juan Delgadillo
	def fill_address_one(address1_value)
		new_window = windows.last
 		   page.within_window new_window do
		    page.fill_in 'address1', :with=> address1_value	     			
	       end
    end
	
	# @author: Juan Delgadillo
	def fill_address_two(address2_value)
		new_window = windows.last
 		   page.within_window new_window do
		    page.fill_in 'address2', :with=> address2_value	  
	       end
    end
	
	# @author: Juan Delgadillo
	def select_status(status_value)
		new_window = windows.last
 		   page.within_window new_window do
		    @status_value=status_value
			page.select @status_value, :from => 'status'    
	       end
    end
	
	# @author: Juan Delgadillo
	def check_add_option(value_to_check)
		@value_to_check_in_add=value_to_check
		new_window = windows.last
 		   page.within_window new_window do
		   p find('.panel-heading',:text=> 'Add').text
		   
	       end
    end
	
	# @author: Juan Delgadillo
	def check_edit_option(value_to_check)
		@value_to_check_in_edit=value_to_check
		new_window = windows.last
 		   page.within_window new_window do
			 p find('.panel-heading',:text=> 'Edit').text
		     find('.panel-heading',:text=> 'Edit').find(:xpath,'.//following-sibling::div').find('.list-unstyled').find('li',match: :first).find('label',:text=> @value_to_check_in_edit).click
	       end
    end
	
	# @author: Juan Delgadillo
	def check_remove_option(value_to_check)
		@value_to_check_in_remove=value_to_check
		new_window = windows.last
 		   page.within_window new_window do
			p find('.panel-heading',:text=> 'Remove').text
		    
	       end
    end
	
	# @author: Juan Delgadillo
	def press_submit_button
		new_window = windows.last
 		   page.within_window new_window do		     
			  click_button('Submit')		     
	       end
    end	
	
	# @author: Juan Delgadillo
	def review_new_user_data
		new_window = windows.last
 		   page.within_window new_window do
			page.all('.xcrud-row').count.should == 1
			@amount= page.all('.xcrud-row').count
			p @amount
			return @amount
	       end
    end
		
end
	