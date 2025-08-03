class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.references :user, null: false, foreign_key: true
      
      t.decimal :lat, precision: 10, scale: 6, null: false
      t.decimal :lon, precision: 10, scale: 6, null: false
      t.string :address, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
