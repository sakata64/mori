class CreateTripPlans < ActiveRecord::Migration[7.1]
  def change
    create_table :trip_plans do |t|
      t.references :user, null: false, foreign_key: true
      t.references :route_segment, null: false, foreign_key: true

      t.datetime :departure_time, null: false
      t.datetime :arrival_time, null: false
      t.integer :length_of_stay
      t.string :name
      t.text :memo

      t.timestamps
    end
  end
end
