class BoatType < ApplicationRecord
  LODKA    = 1
  BIG_BOAT = 2

  has_many :boats, class_name: 'Boat'
end
