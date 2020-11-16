ActiveAdmin.register Citizen do
  permit_params :register_no, :first_name, :last_name, :middle_name, :address, :discarded_at


end
