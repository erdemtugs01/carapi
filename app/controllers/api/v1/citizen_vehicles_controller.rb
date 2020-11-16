module Api
  module V1
    class CitizenVehiclesController < ApplicationController
      def index
        @vehicles = Citizen.find(params[:citizen_id]).vehicles
        render json: @vehicles
      end
    end
  end
end
