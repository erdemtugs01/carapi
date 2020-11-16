class CreateVehicleServices < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicle_services do |t|
      t.references :service_type
      t.references :vehicle

      t.timestamps
    end
  end
end
