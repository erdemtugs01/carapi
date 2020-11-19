ActiveAdmin.register VehicleService do
  permit_params :service_type_id, :vehicle_id  

  index do
    column :vehicle do |v|
      v.vehicle.plate_no
    end
    column :service_type
    actions
  end

  show do
    attributes_table do
      row :vehicle do |v|
        v.vehicle.plate_no
      end
      row :service_type
      row :created_at
    end
  end

  # form do |f|
  #   f.inputs do
  #     f.input :vehicle, as: :string do |v|
  #       v.vehicle.plate_no
  #     end
  #     f.actions
  #   end
  # end
end
