class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.integer :dish_id
      t.integer :author_id
      t.timestamps
    end
  end
end
