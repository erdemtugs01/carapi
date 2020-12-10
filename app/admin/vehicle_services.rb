ActiveAdmin.register VehicleService do
  permit_params :service_type_id, :vehicle_id, :description

  index do
    column :vehicle do |service|
      service.vehicle.plate_no
    end
    column :service_type
    column :description
    actions
  end

  show do
    attributes_table do
      row :vehicle do |service|
        service.vehicle.plate_no
      end
      row :service_type
      row :description
      row :created_at
    end
  end

  form do |f|
    f.inputs do
      f.input :vehicle, as: :select, collection: Vehicle.kept.pluck(:plate_no, :id)
      f.input :service_type
      f.input :description
      f.actions
    end
  end
end
