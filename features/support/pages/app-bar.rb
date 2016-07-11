# Author: Ariel Mattos

def appBar
	@AppBar ||= AppBar.new
end

class AppBar
	include Capybara::DSL

	def initialize
	end

	def select_action_overflow
		find(:css, '.dropdown-toggle').click
	end

	def is_link_visible?(link)
		return find_link(link).visible?
	end

	def click_action_overflow_option(link)
		return find_link(link).click
	end	
end