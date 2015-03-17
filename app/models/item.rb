class Item < ActiveRecord::Base
	has_many :packing_lists, dependent: :destroy
	has_many :trips
end
