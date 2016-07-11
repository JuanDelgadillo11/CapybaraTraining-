# Author: Ariel Mattos

Given(/^that my user account is member of the (\w+) role$/) do |role|
	$supplier = supplierGenie.get_supplier
	adminDashboard.add_supplier $supplier
end

When(/^I log in to the application as a (\w+)$/) do |role|
	visit('http://phptravels.com/demo')
	loginPanel.open "#{role} Login"
	login.login_as $supplier
end

Then(/^the (.+) page is displayed$/) do |path|
	expect(supplierDashboard.path).to eq path	
end

Then(/^my full name is displayed in the left navigation bar$/) do
	expect(leftNavigationBar.user_name).to eq ($supplier.get_user_name)
end

Then(/^a search bar with the placeholder text "([^"]*)" is displayed in the left navigation bar$/) do |placeholder|
  expect(leftNavigationBar.search_bar_placeholder).to eq (placeholder)
end

Given(/^that I am a (Tours|Cars|Hotels) supplier who has rights to (Add|Edit|Remove) such services$/) do |service, action|
	$supplier = supplierGenie.get_supplier
	$supplier.set_permission(service, action, true)
	adminDashboard.add_supplier $supplier
end

Then(/^the menu "(Tours|Cars|Hotels)" option is displayed in the left navigation bar$/) do |option|
	expect(leftNavigationBar.is_menu_visible?(option)).to be true
end

Given(/^that I am a (Tours|Cars|Hotels) supplier$/) do |service|
	$supplier = supplierGenie.get_supplier
	$supplier.set_permission(service, 'Add', true)
	adminDashboard.add_supplier $supplier
end

When(/^I expand the menu option "([^"]*)"$/) do |option|
	$menu = option
	leftNavigationBar.select_menu($menu)
end

Then(/^the submenu option "([^"]*)" is displayed in the left navigation bar$/) do |submenu|
  	expect(leftNavigationBar.is_submenu_visible?($menu, submenu)).to be true
end

When(/^I select the action overflow menu in the application bar$/) do
	appBar.select_action_overflow
end

Then(/^the "([^"]*)" option is displayed$/) do |link|
	expect(appBar.is_link_visible?(link)).to be true
end

When(/^I select the option "([^"]*)" in the action overflow menu$/) do |option|
	appBar.click_action_overflow_option(option)
end

Then(/^the page "([^"]*)" is displayed$/) do |arg1|
  
end

