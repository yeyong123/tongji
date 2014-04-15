class ProductsController < ApplicationController
	before_filter :find_id, only: [:show, :edit, :destroy, :update]
  
	def index
		@products = Product.all
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
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

	def find_id
		@product = Product.find(params[:id])
	end
end
