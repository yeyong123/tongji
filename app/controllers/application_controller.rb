class ApplicationController < ActionController::Base
	protect_from_forgery
	before_filter :auth_user!


	private

	def auth_user!(opts = {} )
		if admin_signed_in?
			authenticate_admin!
		else
			authenticate_user!
		end
	end
end
