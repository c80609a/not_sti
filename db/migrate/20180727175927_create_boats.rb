class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.references :owner, foreign_key: { to_table: :users }, null: false
      t.integer :boat_type_id, foreign_key: { to_table: :boat_types }, null: false
      t.string :title, null: false

      t.timestamps
    end
  end
end
