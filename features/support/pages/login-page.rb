# Author: Ariel Mattos

def login
	@Login ||= Login.new
end

class Login
	include Capybara::DSL

	def initialize
	end

	def login_as(user)
		fill_in('email', :with => user.email)
		fill_in('password', :with => user.password)
		click_button('Sign in')
	end

	def login_as_Admin
		fill_in('email', :with => 'admin@phptravels.com')
		fill_in('password', :with => 'demoadmin')
		click_button('Sign in')
	end
end
