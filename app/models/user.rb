class User < ApplicationRecord
  has_many :rents, class_name: 'Rent'
  has_many :boats, class_name: 'Boat'
end
