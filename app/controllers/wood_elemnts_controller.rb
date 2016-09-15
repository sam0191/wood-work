class WoodElemntsController < ApplicationController
	before_action :set_image

	def new
		@wood_elemnt = @image.wood_elemnts.build
	end

	def create
		@wood_elemnt = @image.wood_elemnts.build(wood_params)
		if @wood_elemnt.save
			redirect_to category_image_path(@image.category, @image)
		else
			render 'new'
		end
	end 

	def edit
		@wood_elemnt = @image.wood_elemnts.find(params[:id])
	end

	def update
		@wood_elemnt = @image.wood_elemnts.find(params[:id])
		if @wood_elemnt.update(wood_params)
			redirect_to category_image_path(@image.category, @image)
		else
			render 'edit'
	end

	def show
		@wood_elemnt = @image.wood_elemnts.find(params[:id])
	end

	def destroy
		@wood_elemnt = @image.wood_elemnts.find(params[:id])
		@wood_elemnt.destroy
		redirect_to

	end

	private

	def set_image
		@image = Image.find(params[:id])
	end

	def wood_params
		params.require(:wood_elemnt).permit(:pic, :number)
	end
end
