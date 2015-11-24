class Company < ActiveRecord::Base
has_many :company_address
has_many :contact
has_one :resource
end
