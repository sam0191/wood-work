class AddImageIdToSubImages < ActiveRecord::Migration
  def change
  	add_column :sub_images, :image_id, :integer
  	add_index :sub_images, :image_id
  end
end
