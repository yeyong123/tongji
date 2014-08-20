class AdvisoriesController < ApplicationController

	before_filter :find_id, only: [:edit, :update,:destroy]

	def index
	@search = Advisory.search(params[:search])
		@advisories = @search.paginate(page: params[:page], per_page: 10)
		end

	def show
		@user = User.find(params[:id])
		@search = @user.advisories.search(params[:search])
		@advisories = @search.paginate(page: params[:page])
	end

	def edit
	end

	def new
		@user = current_user
		@advisory = @user.advisories.new
	end

	def create
		@user = current_user
		@advisory = @user.advisories.new(params[:advisory])
		if @advisory.save
			@advisory.increment!(:quantity)
			redirect_to root_path
		else
			render 'new'
		end
	end

	def update
		if @advisory.update_attributes(params[:advisory])
			redirect_to advisory_path(@user)
		else
			render 'edit'
		end
	end


	def advisory_sap	
		@advisories = Advisory.where(sap: true).paginate(page: params[:page], per_page: 10)
	end


	def destroy
		@advisory.destroy
		redirect_to root_path
	end


	def get_item
		if params[:date]	
			@kinds = Advisory.includes(:kind).where("created_at >= ?",params[:date])
		else
			@kinds = Kind.includes(:advisories)
		end
	end

	private

	def find_id
		begin
		@user = current_user
		@advisory = @user.advisories.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			logger.error "只能编辑自己的！"
			redirect_to root_path, notice: "只能操作自己的数据"
		end
	end

end
