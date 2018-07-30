class CreateDealsRents < ActiveRecord::Migration[5.1]
  def change
    create_table :deals_rents do |t|
      t.references :owner, foreign_key: { to_table: :users }, null: false
      t.string :rent_type, null: false

      t.string :address, null: false
      t.timestamps
    end
  end
end
