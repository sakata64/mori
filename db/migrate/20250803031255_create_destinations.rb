class CreateDestinations < ActiveRecord::Migration[7.1]
  def change
    create_table :destinations do |t|
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
