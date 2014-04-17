class CluesController < ApplicationController

	def show
		@clue = Clue.find(params[:id])
		@advisories = @clue.advisories.order('created_at desc').paginate(page: params[:page], per_page: 10)
	end

	def new
		@clue = Clue.new
	end

	def create
		@clue = Clue.new(params[:clue])
		if @clue.save
			redirect_to :back
		else
			render 'new'
		end
	end

end
