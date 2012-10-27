class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :title
      t.string :desc
      t.integer :category
      t.float :location
      t.string :photo

      t.timestamps
    end
  end
end
