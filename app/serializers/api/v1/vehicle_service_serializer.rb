module Api
  module V1
    class VehicleServiceSerializer < ApplicationSerializer
      attributes :service_type_id, :vehicle_id, :description, :s_type
      belongs_to :service_type

      private
        def s_type
          object.service_type.name
        end
    end
  end
end
