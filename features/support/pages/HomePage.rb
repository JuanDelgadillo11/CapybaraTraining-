#Scarlen Quinsamolle
def home_page
	@home_page ||= HomePage.new
	
end

class HomePage
	include Capybara::DSL
	attr_reader :title

	def initialize
		@css_submenu = '.show-submenu'
		@title = page.find('h2')
	end

	def click_on_account option
		account = page.find(@css_submenu).click
		page.find('a', :text => option).click
	end

end