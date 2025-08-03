class CreateRouteSegments < ActiveRecord::Migration[7.1]
  def change
    create_table :route_segments do |t|
      t.references :starting_point, null: false, foreign_key: true
      t.references :destination, null: false, foreign_key: true

      t.float :distance, null: false
      t.integer :duration, null: false

      t.timestamps
    end
  end
end
