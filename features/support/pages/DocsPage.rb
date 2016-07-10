# Capybara Project - Team B
# @author: Juan Delgadillo

include RSpec::Matchers
def docs_page
	@docs_page ||= DocsPage.new
end
class DocsPage
	include Capybara::DSL
	include Capybara::RSpecMatchers
	
	def initialize

	end
	
	# @author: Juan Delgadillo
	def validate_header_option(value_to_search)
	  p value_to_search
	  new_window = windows.last
	  p new_window
       page.within_window new_window do
		p find('h1',:text=>value_to_search).text
	  end
	end
	
	# @author: Juan Delgadillo
	def validate_leftMenu_options(value_to_search)
	  new_window = windows.last
	  p new_window
       page.within_window new_window do
		find_link(value_to_search).text
	  end
	end
	
end
