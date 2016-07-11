require 'C:\PHPTRAVELS Project\features\support\pages\header-navigation-menu.rb'
require 'C:\PHPTRAVELS Project\features\support\pages\login-panel.rb'
require 'C:\PHPTRAVELS Project\features\support\pages\login-page.rb'

Given(/^that I open the PHPTRAVEL home page$/) do
  visit('http://phptravels.com/demo/')
end

When(/^I click DEMO$/) do
	loginPanel.open "Administator Login"
	login.login_as "Administrator"

end

#Then(/^the DEMO page is displayed$/) do
# The admin dashboard page is displayed
#	expect(page).to have_title 'Dashboard'
  
#end
