class CreateRecipeItems < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_items do |t|
      t.string :preparation_method
      t.integer :gram_per_kilogram_of_dish
      t.integer :colories_per_gram
      t.integer :recipe_id
      t.integer :ingredient_id
      t.timestamps
    end
  end
end
