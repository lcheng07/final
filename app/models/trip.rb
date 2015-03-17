class Trip < ActiveRecord::Base
	belongs_to :user
	belongs_to :city
	belongs_to :item
	has_many :packing_lists, dependent: :destroy
end
