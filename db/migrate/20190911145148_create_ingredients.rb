class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :preparation_method
      t.integer :gram_per_kilogram_of_dish
      t.integer :colories_per_gram
      t.integer :dish_id
      t.integer :provider_id
      t.timestamps
    end
  end
end
