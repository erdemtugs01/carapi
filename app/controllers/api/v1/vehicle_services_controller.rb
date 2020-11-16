module Api
  module V1
    class VehicleServicesController < ApplicationController
      before_action :set_service
      def index
        render json: @services
      end

      def show
        @service = @services.find(params[:id])
        render json: @service
      end

      private
        def set_service
          @services = Vehicle.find(params[:vehicle_id]).vehicle_services
        end
    end
  end
end
