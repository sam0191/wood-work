class CreateWoodElemnts < ActiveRecord::Migration
  def change
    create_table :wood_elemnts do |t|
    	t.string :wood_elemnt
    	t.integer :number
    	
      t.timestamps null: false
    end
  end
end
