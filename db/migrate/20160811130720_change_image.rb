class ChangeImage < ActiveRecord::Migration
  def change
  	rename_column :images, :image, :photo
  end
end
