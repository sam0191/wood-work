class AddColumnsToImages < ActiveRecord::Migration
  def change
    add_column :images, :i_name, :string
    add_column :images, :i_bio, :string
    add_column :images, :price, :string
  end
end
