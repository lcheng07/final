class Trip < ActiveRecord::Base
	belongs_to :user
	belongs_to :city
	has_many :tripitems, dependent: :destroy
end
