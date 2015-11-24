class Resource < ActiveRecord::Base
	has_many :company
	has_one :user
end
