module Api
  module V1
    class CitizensController < ApplicationController
      before_action :set_citizen, only: :show
      def index
        @citizens = Citizen.kept
        render json: @citizens
      end

      def show
        render json: @citizen
      end

      private
        def set_citizen
          @citizen = Citizen.find(params[:id])
        end
    end
  end
end
