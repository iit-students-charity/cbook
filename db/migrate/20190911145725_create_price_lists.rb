class CreatePriceLists < ActiveRecord::Migration[5.2]
  def change
    create_table :price_lists do |t|
      t.date :date
      t.float :price
      t.integer :provider_id
      t.integer :ingredient_id
      t.timestamps
    end
  end
end
