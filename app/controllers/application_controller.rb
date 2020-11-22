class ApplicationController < ActionController::Base
	include DeviseTokenAuth
	include Pundit
end
