class AddFurToSpacecats < ActiveRecord::Migration
  def change
  	#add column called fur that is a string
  	add_column :spacecats, :fur, :string
  end
end
