class ServiceType < ApplicationRecord
  has_many :vehicles
  has_many :vehicle_services
end
