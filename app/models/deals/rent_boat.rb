module Deals
  class RentBoat < ::ApplicationRecord
    self.table_name  = 'deals_rent_boats'
    self.primary_key = :rent_id

    belongs_to :rent, class_name: '::Deals::Rent'
    belongs_to :boat, class_name: 'Boat'
  end

end