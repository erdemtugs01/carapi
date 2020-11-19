class AddDescriptionToVehicleServices < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicle_services, :description, :string
  end
end
