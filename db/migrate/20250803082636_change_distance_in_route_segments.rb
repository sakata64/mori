class ChangeDistanceInRouteSegments < ActiveRecord::Migration[7.1]
  def change
    change_column :route_segments, :distance, :decimal, precision: 8, scale: 2, null: false
  end
end
