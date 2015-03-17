class PackingList < ActiveRecord::Base
  belongs_to :trip
  belongs_to :user
  belongs_to :item
end
