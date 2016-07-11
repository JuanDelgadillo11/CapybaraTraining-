# Author: Ariel Mattos

def loginPanel
	@LoginPanel ||= LoginPanel.new
end

HOMEPAGE ||= "http://www.phptravels.net"
ADMINISTRATOR ||= "http://www.phptravels.net/admin"
SUPPLIER ||= "http://www.phptravels.net/supplier"


ROLE ||= Hash["Administator Login" => ADMINISTRATOR,
			"Supplier Login" => SUPPLIER]

class LoginPanel
	include Capybara::DSL

	def initialize
	end

	def press(option)
		click_button(option)
	end

	def open(page)
		press ROLE[page]
		switch_to_window { title == page }
	end
end
