class RegionsController < ApplicationController

	def index
	end

	def new
		@region = Region.new
	end

	def create
		@region = Region.new(params[:region])
		if @region.save
			redirect_to root_path
		else
			render 'new'
		end
	end
end
