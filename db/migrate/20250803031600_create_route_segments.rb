class CreateRouteSegments < ActiveRecord::Migration[7.1]
  def change
    create_table :route_segments do |t|

      t.timestamps
    end
  end
end
