class AddNameFloorMemoToParkings < ActiveRecord::Migration[7.1]
  def change
    add_column :parkings, :memo, :text
    add_column :parkings, :name, :string
    add_column :parkings, :floor, :string
  end
end
