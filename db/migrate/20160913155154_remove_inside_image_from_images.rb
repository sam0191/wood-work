class RemoveInsideImageFromImages < ActiveRecord::Migration
  def change
  	remove_column :images, :inside_image, :string
  end
end
