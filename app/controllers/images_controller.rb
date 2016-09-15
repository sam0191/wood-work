class ImagesController < ApplicationController
	before_action :set_category
	def index
		@images = @category.images
	end

	def new
		@image = @category.images.build
		@sub_images = @image.sub_images.build
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
		@sub_images = @image.sub_images
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
		respond_to do |format|
      format.html { redirect_to category_path(@category) }
      format.js
    end
	end

	private
	def set_category
		@category = Category.find(params[:category_id])
	end

	def image_params
		params.require(:image).permit(:photo, :i_name, :i_bio, :price, sub_images_attributes: [:image_id, :small_image])
	end
end
