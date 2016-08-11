class ImagesController < ApplicationController
	before_action :set_category
	def index
		@images = @category.images
	end

	def new
		@image = @category.images.build
	end

	def create
		@image = @category.images.build(image_params)
		if @image.save
			redirect_to category_path(@category)
		else
			render 'new'
		end
	end

	def edit
		@image = @category.images.find(params[:id])
	end

	def update
		@image = @category.images.find(params[:id])
		if @image.update(image_params)
			redirect_to category_path(@category)
		else
			render 'edit'
		end
	end

	def show
		@image = @category.images.find(params[:id])
	end

	def destroy
		@image = @category.images.find(params[:id])
		@image.destroy
		redirect_to category_path(@category)
	end

	private
	def set_category
		@category = Category.find(params[:category_id])
	end

	def image_params
		params.require(:image).permit(:photo)
	end
end
