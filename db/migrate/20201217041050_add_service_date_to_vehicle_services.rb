class AddServiceDateToVehicleServices < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicle_services, :service_date, :datetime
  end
end
