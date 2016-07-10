# Capybara Project - Team B
# @author: Juan Delgadillo

def main_page
	@main_page ||= MainWindow.new
end

class MainWindow
	 
	 include Capybara::DSL
	 attr_reader :title, :user_menu
	 
	 def initialize
		 
	 end
	# @author: Juan Delgadillo	
	def select_Top_Menu_Option(option)
		@value=option
		
		case @value
			when "DEMO"
			  menu_selection(CustomHelper.capitalize_value(@value))
			when "ORDER"
			  menu_selection(CustomHelper.capitalize_value(@value))
			when "SERVICES"
			  menu_selection(CustomHelper.capitalize_value(@value))
			when "DOCS"
			  menu_selection(CustomHelper.capitalize_value(@value))			  
			when "INTEGRATIONS"
			  menu_selection(CustomHelper.capitalize_value(@value))
			when "FEATURES"
			  menu_selection(CustomHelper.capitalize_value(@value))
			when "FORUMS"
			  menu_selection(CustomHelper.capitalize_value(@value))			  
			when "LOGIN"
			  menu_selection(CustomHelper.capitalize_value(@value))
		  end   
	end

	def menu_selection (button)
	  p find_link(button).click
	end

end