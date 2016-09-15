class SubImagesController < ApplicationController
	before_action :set_image, except: [:new]

	def index

	end



	def edit
		@sub_image = @image.sub_images.find(params[:id])
	end

	def update
		sub_image = @image.sub_images.find(params[:id])
		if sub_image.update(sub_params)
			redirect_to :back
		else
			render 'edit'
		end
	end

	def show
		@sub_image = @image.sub_images.find(params[:id])
	end

	def destroy
		@sub_image = @image.sub_images.find(params[:id])
		@sub_image.destroy
		redirect_to :back
	end

	private

	def set_image
		@image = Image.find(params[:id])
	end

	def sub_params
		params.require(:sub_image).permit(:small_image)
	end
end
