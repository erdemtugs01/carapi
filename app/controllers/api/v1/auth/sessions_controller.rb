module Api
  module V1
    module Auth
      class SessionsController < DeviseTokenAuth::SessionsController
        skip_before_action :verify_authenticity_token

        protected

          def render_create_success
            render json: UserSerializer.new(@resource)
          end
      end
    end
  end
end
