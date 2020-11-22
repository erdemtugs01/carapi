module Api
  module V1
    class CitizenVehiclesSerializer < ApplicationSerializer
      belongs_to :vehicle, serializer: VehicleSerializer
    end
  end
end
