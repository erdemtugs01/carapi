class AddPlateNoToVehicles < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles, :plate_no, :string
  end
end
