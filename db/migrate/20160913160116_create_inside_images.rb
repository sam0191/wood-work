class CreateInsideImages < ActiveRecord::Migration
  def change
    create_table :inside_images do |t|
    	t.string :picture
    	t.string :description
    	
      t.timestamps null: false
    end
  end
end
