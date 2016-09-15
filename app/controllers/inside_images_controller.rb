class InsideImagesController < ApplicationController
	before_action :set_image

	def new
		@inside_image = @image.inside_image.build
	end

	def create
		@inside_image = @image.inside_image.build(inside_image_params)
		if @inside_image.save
			redirect_to category_image_path(@image.category, @image)
		else
			render 'new'
		end
	end 

	def edit
		@inside_image = @image.inside_image
	end

	def update
		@inside_image = @image.inside_image
		if @inside_image.update(inside_image_params)
			redirect_to category_image_path(@image.category, @image)
		else
			render 'edit'
		end
	end

	def show
		@inside_image = @image.inside_image
	end

	def destroy
		@inside_image = @image.inside_image
		@inside_image.destroy
		redirect_to category_image_path(@image.category, @image)
	end

	private

	def set_image
		@image = Image.find(params[:id])
	end

	def inside_image_params
		params.require(:inside_image).permit(:picture, :description)
	end

end
