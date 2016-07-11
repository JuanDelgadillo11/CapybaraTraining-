# Author: Ariel Mattos

def supplierDashboard
	@SupplierDashboard ||= SupplierDashboard.new
end

class SupplierDashboard
	include Capybara::DSL

	attr_accessor :path
	attr_accessor :title

	def initialize
	end

	def path
		return current_path
	end

end