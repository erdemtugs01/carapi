module Api
  module V1
    class UserSerializer < ApplicationSerializer
      attributes :email, :role
    end
  end
end
