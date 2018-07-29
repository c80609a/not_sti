class Boat < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  belongs_to :boat_type, class_name: 'BoatType', foreign_key: 'boat_type_id'
end
