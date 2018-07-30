class CreateDealsRentBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :deals_rent_boats, id: false do |t|
      t.references :rent,  foreign_key: { to_table: :deals_rents }, primary_key: true
      t.references :boat,  foreign_key: true, null: false
    end
  end
end
