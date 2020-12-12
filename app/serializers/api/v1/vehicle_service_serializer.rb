module Api
  module V1
    class VehicleServiceSerializer < ApplicationSerializer
      attributes :service_type_id, :vehicle_id, :description
      attribute :s_type do |object|
        object.service_type.name
      end
      attribute :updated_at
    end
  end
end
