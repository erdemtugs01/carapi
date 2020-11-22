module Api
  module V1
    class CitizenVehiclesController < ApplicationController
      def index
        @vehicles = Citizen.find(params[:citizen_id]).vehicles
        render json: to_json(@vehicles)
      end

      private
        def to_json(data)
          CitizenVehicleSerializer.new(data, { include: [:vehicle] })
        end
    end
  end
end
