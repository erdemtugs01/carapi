module Api
  module V1
    class VehicleSerializer < ApplicationSerializer
      attributes :plate_no, :make, :model, :vin, :v_type, :manufactured, :imported

      belongs_to :citizen, serializer: CitizenSerializer
    end
  end
end
