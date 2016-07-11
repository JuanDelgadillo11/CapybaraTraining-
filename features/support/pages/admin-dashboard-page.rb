# Author: Ariel Mattos

def adminDashboard
	@AdminDashboard ||= AdminDashboard.new
end

SERVICES ||= Hash["Tours" => 1, "Cars" => 2, "Hotels" => 3]
PERMISSIONS ||= Hash["Add" => 1, "Edit" => 2, "Remove" => 3]

class AdminDashboard
	include Capybara::DSL

	def initialize
	end

	def add_supplier(supplier)
		#supplier = supplierGenie.get_supplier

		visit('http://phptravels.net/admin')
		login.login_as_Admin
		click_link('Accounts')
		click_link('Suppliers')
		click_button('Add')
		fill_in('fname', :with => supplier.first_name)
		fill_in('lname', :with => supplier.last_name)
		fill_in('email', :with => supplier.email)
		fill_in('password', :with => supplier.password)
		find(:css, 'span.select2-chosen').click()
		find(:css, '.select2-result-label', :text => supplier.country).click()
		select supplier.service, :from => "applyfor"
		#select "Opel Astra 2014", :from => "cars[]"
		fill_in('itemname', :with => supplier.password)
		supplier.permissions.each do |service, hash|
			supplier.permissions[service].each do |permission, value|
				if (value == true)
					select_permission(service,permission)
				end				
			end
		end
		click_button('Submit')
	end

	def select_permission (service, permission)
		path = ".//*[@id='content']/form/div/div[2]/div/div[22]/div[#{PERMISSIONS[permission]}]/div/div[2]/ul/li[#{SERVICES[service]}]/label"
		find(:xpath, path).click()
	end
end