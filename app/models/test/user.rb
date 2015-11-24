class User < ActiveRecord::Base
has_many :resource
has_one :userType
end
