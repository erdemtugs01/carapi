module Api
  module V1
    class CitizenSerializer < ApplicationSerializer

      attributes :register_no, :first_name, :middle_name, :last_name, :address
    end
  end
end
