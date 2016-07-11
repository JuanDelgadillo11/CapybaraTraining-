# Author: Ariel Mattos

class Supplier
	attr_accessor :first_name
	attr_accessor :last_name
	attr_accessor :email
	attr_accessor :password
	attr_accessor :country
	attr_accessor :service
	attr_accessor :name
	attr_accessor :assigned_hotels
	attr_accessor :assigned_tours
	attr_accessor :assigned_cars
	attr_accessor :permissions

	def initialize(id)
		@first_name = 'Joe'
		@last_name = 'Jackson'
		@email = "supplier#{id}@phptravels.com"
		@password = "demosupplier"
		@country = 'Argentina'
		@service = 'cars'
		@Name = 'CarSuppliers'
		@assigned_hotels = []
		@assigned_tours = []
		@assigned_cars = []
		@permissions = Hash[
			"Tours" => Hash[
				"Add" => false,
				"Edit" => false,
				"Remove" => false
				],
			"Cars" => Hash[
				"Add" => false,
				"Edit" => false,
				"Remove" => false
				],
			"Hotels" => Hash[
				"Add" => false,
				"Edit" => false,
				"Remove" => false
				]
			]
	end

	def get_user_name
		return "#{first_name} #{@last_name}"
	end

	def set_permission(service, action, value)
		@permissions[service][action] = value
	end
end
