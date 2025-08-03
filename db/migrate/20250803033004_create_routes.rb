class CreateRoutes < ActiveRecord::Migration[7.1]
  def change
    create_table :routes do |t|
      t.references :user, null: false, foreign_key: true

      t.decimal :distance, precision: 8, scale: 2, null: false
      t.integer :duration, null: false
      t.json :raw_route_data, null: false
      t.string :name
      t.text :memo

      t.timestamps
    end
  end
end
