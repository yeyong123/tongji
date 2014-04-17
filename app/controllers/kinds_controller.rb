class KindsController < ApplicationController


	def show
		@kind = Kind.find(params[:id])
		@advisories = @kind.advisories.order('created_at desc').paginate(page: params[:page],per_page: 10)
	end

	def new
		@kind = Kind.new
	end

	def create
		@kind = Kind.new(params[:kind])
		if @kind.save
			redirect_to :back
		else
			render 'new'
		end
	end

end
