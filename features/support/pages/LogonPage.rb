# Capybara Project - Team B
# @author: Juan Delgadillo

def logon_page
	@logon_page ||= LogonPage.new
end

class LogonPage
	include Capybara::DSL
	
	def initialize

	end

	# @author: Juan Delgadillo
	Capybara.add_selector(:loggon_path) do
      xpath { |arg| "html/body/section[1]/div/div/div[#{arg}]/div/div/form/button" }
	end
    
    # @author: Juan Delgadillo 	
	def press_logon_option(option)
		@value=option
		
		case @value
			when "HOMEPAGE"
				page.find(:loggon_path,1).click
			when "ADMINISTRATOR"
				page.find(:loggon_path,2).click
			when "SUPPLIER"
				page.find(:loggon_path,3).click
		end		
	end
	
	# @author: Juan Delgadillo
	def fill_data(name,value)
		p @received_name=name
		p @value_to_fill=value
		new_window = windows.last
 		   page.within_window new_window do
				if @received_name=='Username'
					page.fill_in 'email', :with => @value_to_fill, wait:3
					elsif @received_name=='Password'
						page.fill_in 'password', :with => @value_to_fill, wait:3
						else
							p 'Retrieved values are not expected to this area'
							
				end	
		   end		
	end
	
	# @author: Juan Delgadillo
	def press_logon(button)
		p @received_button=button
		new_window = windows.last
 		  page.within_window new_window do
				click_on(@received_button)
		  end		
	end
	
end
	