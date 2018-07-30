module Deals
  class Rent < ::ApplicationRecord
    self.table_name = 'deals_rents'

    TYPE_BOAT  = 'rent_boat'.freeze
    TYPE_SCOPE = 'rent_scope'.freeze

    belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  end

end