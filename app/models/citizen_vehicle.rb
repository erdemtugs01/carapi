class CitizenVehicle < ApplicationRecord
  belongs_to :citizen
  belongs_to :vehicle
end
