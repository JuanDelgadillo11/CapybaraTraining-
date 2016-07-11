# Author: Ariel Mattos

def supplierGenie
	@SupplierGenie ||= SupplierGenie.new
end

class SupplierGenie
	@@id = 1

	def get_supplier
		supplier = Supplier.new(@@id)
		@@id = @@id + 1
		return supplier
	end
end