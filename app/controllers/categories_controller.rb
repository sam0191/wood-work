class CategoriesController < ApplicationController

	def index

	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to category_path(@category)
		else
			render 'new'
		end
	end

	def show
		@category = Category.find(params[:id])
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		if @category.update(category_params)
			redirect_to category_path(@category)
		else
			render 'edit'
		end
	end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to root_path

	end

	private

	def category_params
		params.require(:category).permit(:name, :description, :profile_image)
	end
end
