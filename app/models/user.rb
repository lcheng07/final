class User < ActiveRecord::Base
	has_secure_password

	has_many :packing_lists
	has_many :trips, dependent: :destroy
	has_many :cities, through: :trips	

	validates :email, presence: true
	validates :name, presence: true
end
