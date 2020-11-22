ActiveAdmin.register Vehicle do
  permit_params :citizen_id, :make, :model, :vin, :v_type, :manufactured, :imported, :discarded_at, :plate_no
  
  index do
    selectable_column
    column :plate_no
    column :make
    column :model
    column :vin
    column :v_type
    column :manufactured
    column :imported
    actions
  end

  show do |f|
    attributes_table do
      row :citizen do |c|
        vehicle.citizen.register_no
      end
      row :make
      row :model
      row :v_type
      row :vin
      row :manufactured
      row :imported
      row :discarded_at
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :plate_no
      f.input :make
      f.input :model
      f.input :vin
      f.input :v_type
      f.input :citizen, as: :select, collection: Citizen.kept.pluck(:register_no, :id)
      f.input :manufactured
      f.input :imported
    end
    f.actions
  end
end
