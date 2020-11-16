class VehicleService < ApplicationRecord
  belongs_to :vehicle
  belongs_to :service_type
end
