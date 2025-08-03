class CreateSelectedRouteSegments < ActiveRecord::Migration[7.1]
  def change
    create_table :selected_route_segments do |t|
      t.references :route_segment, null: false, foreign_key: true

      t.integer :order_index, null: false

      t.timestamps
    end
  end
end
