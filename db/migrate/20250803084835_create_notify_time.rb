class CreateNotifyTime < ActiveRecord::Migration[7.1]
  def change
    create_table :notify_times do |t|
      t.references :trip_plan, null: false, foreign_key: true

      t.datetime :notify_at, null: false
      t.boolean :notified, null: false

      t.timestamps
    end
  end
end
