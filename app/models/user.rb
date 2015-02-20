class User < ActiveRecord::Base
	has_many :trips, dependent: :destroy
	has_many :cities, through: :trips	
end
