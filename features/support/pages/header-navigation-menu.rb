# Author: Ariel Mattos

def navigationMenu
	@NavigationMenu ||= HeaderNavigationMenu.new
end

DEMO ||= "Demo"
ORDER ||= "Order"
SERVICES ||= "Services"
DOCS ||= "Docs"
INTEGRATIONS ||= "Integrations"
FEATURES ||= "Features"
FORUMS ||= "Forums"
LOGIN ||= "Login"

class HeaderNavigationMenu
	include Capybara::DSL

	def initialize
	end

	def click(option)
		click_link(option)
	end

end
