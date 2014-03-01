class CreateSpacecats < ActiveRecord::Migration
  def change
    create_table :spacecats do |t|
      t.string :name
      t.string :personality
      t.integer :planets_visited

      t.timestamps
    end
  end
end
