class City < ActiveRecord::Base
	has_many :trips, dependent: :destroy
end
