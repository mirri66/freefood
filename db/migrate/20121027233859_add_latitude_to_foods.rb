class AddLatitudeToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :latitude, :float
  end
end
