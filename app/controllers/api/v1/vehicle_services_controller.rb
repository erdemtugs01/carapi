module Api
  module V1
    class VehicleServicesController < ApplicationController
      before_action :set_service
      def index
        render json: to_json(@services)
      end

      def show
        @service = @services.find(params[:id])
        render json: to_json(@service)
      end

      private
        def set_service
          @services = Vehicle.find(params[:vehicle_id]).vehicle_services
        end

        def to_json(data)
          VehicleServiceSerializer.new(data)
        end
    end
  end
end
