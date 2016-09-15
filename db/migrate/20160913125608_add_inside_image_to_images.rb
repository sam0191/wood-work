class AddInsideImageToImages < ActiveRecord::Migration
  def change
  	add_column :images, :inside_image, :string
  end
end
