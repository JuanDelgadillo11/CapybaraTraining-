# Author: Ariel Mattos

def leftNavigationBar
	@LeftNavigationBar ||= LeftNavigationBar.new
end

class LeftNavigationBar
	include Capybara::DSL

	def initialize
	end

	def user_name
		return find(:css, '.user>span').text
	end

	def search_bar_placeholder
		return find(:css, '#sidebar-query')['placeholder']
	end

	def is_menu_visible?(menu)
		return find_link(menu).visible?
	end

	def select_menu(menu)
		return find_link(menu).click
	end

	def is_submenu_visible?(menu,submenu)
		within(:xpath, ".//*[@id='#{menu}']") do
			return find_link(submenu).visible?
		end
	end
end