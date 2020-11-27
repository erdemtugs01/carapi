module Api
  module V1
    class VehiclesController < ApplicationController
      before_action :set_vehicle, only: [:show, :update, :destroy]

      def index
        @vehicles = if params[:citizen_id]
          Citizen.find(params[:citizen_id]).vehicles
        else
          Vehicle.kept
        end
        render json: to_json(@vehicles)
      end

      def show
        render json: to_json(@vehicle)
      end

      def create
        @vehicle = Vehicle.build(vehicle_params)

        if @vehicle.save
          render json: to_json(@vehicle), status: :created
        else
          render json: {errors: @vehicle.errors}, status: :unprocessable_entity
        end
      end

      def update
        if @vehicle.update(vehicle_params)
          render json: to_json(@vehicle), status: :created
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

        def to_json(data)
          VehicleSerializer.new(data)
        end
    end
  end
end
