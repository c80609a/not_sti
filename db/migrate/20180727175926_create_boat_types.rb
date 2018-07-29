class CreateBoatTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :boat_types, id: false do |t|
      t.integer :id, primary_key: true
      t.string :index, null: false

      t.timestamps
    end
  end
end
