class AddImageToImages < ActiveRecord::Migration
  def change
    add_column :images, :file,  :string
    add_column :images, :title, :string
  end
end
