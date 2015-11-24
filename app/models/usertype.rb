class Usertype < ActiveRecord::Base
has_many :user
has_one :login
end
