class AddRouteToSelectedRouteSegments < ActiveRecord::Migration[7.1]
  def change
    add_reference :selected_route_segments, :route, null: false, foreign_key: true
  end
end
