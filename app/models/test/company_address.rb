class CompanyAddress < ActiveRecord::Base
	has_one :company
	has_one :address
end
