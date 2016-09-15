class CreateSubImages < ActiveRecord::Migration
  def change
    create_table :sub_images do |t|
    	t.string :small_image
      t.timestamps null: false
    end
  end
end
