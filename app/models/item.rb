class Item < ActiveRecord::Base
	has_many :tripitems, dependent: :destroy
end
