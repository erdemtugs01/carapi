class ApplicationController < ActionController::Base
	# include DeviseTokenAuth
	include Pundit
	protect_from_forgery with: :null_session
end
