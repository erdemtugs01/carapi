module Api
  module V1
    class VehiclesController < ApplicationController
      before_action :set_vehicle, only: [:show, :update, :destroy]

      def index
        @vehicles = Vehicle.kept
        render json: @vehicles
      end

      def show
        render json: @vehicle
      end

      def create
        @vehicle = Vehicle.build(vehicle_params)

        if @vehicle.save
          render json: @vehicle, status: :created
        else
          render json: {errors: @vehicle.errors}, status: :unprocessable_entity
        end
        render json: @vehicle
      end

      def update
        if @vehicle.update(vehicle_params)
          render json: @vehicle, status: :created
        else
          render json: {errors: @vehicle.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        unless @vehicle.discard
          render json: {errors: @vehicle.errors}, status: :unprocessable_entity
        end
      end

      private
        def set_vehicle
          @vehicle = Vehicle.find(params[:id])
        end

        def vehicle_params
          params.require(:vehicle).permit(
            :plate_no,
            :vin,
            :citizen,
            :make,
            :model,
            :v_type,
            :manufactured,
            :imported,
            :discarded_at
          )
        end
    end
  end
end
