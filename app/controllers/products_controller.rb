class ProductsController < ApplicationController
	before_filter :find_id, only: [:show, :edit, :destroy, :update]
  
	def index
		@products = Product.all
  end

	 def show
		 @advisories = @product.advisories.order('created_at desc').paginate(page: params[:page], per_page: 10)
	 end
  def new
		@product = Product.new
  end

	def edit
	end

	def update
		if @product.update_attributes(params[:product])
			redirect_to products_path
		else
			render 'edit'
		end
	end


	def create
		@product = Product.new(params[:product])
		if @product.save
			redirect_to :back, notice: "添加成功, 继续添加或返回"
		else
			render 'new'
		end
	end

	private

	def find_id
		@product = Product.find(params[:id])
	end
end
