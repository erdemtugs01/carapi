ActiveAdmin.register Vehicle do
  permit_params :citizen, :make, :model, :vin, :v_type, :manufactured, :imported, :discarded_at, :plate_no
  
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

  form do |f|
    f.inputs do
      f.input :plate_no
      f.input :make
      f.input :model
      f.input :vin
      f.input :v_type
      f.input :citizen
      f.input :manufactured
      f.input :imported
    end
    f.actions
  end
end
