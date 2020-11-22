module Api
  module V1
    class VehicleServiceSerializer < ApplicationSerializer
      attributes :service_type_id, :vehicle_id, :description

      belongs_to :service_type, serializer: ServiceTypeSerializer
      belongs_to :vehicle, serializer: VehicleSerializer
    end
  end
end
