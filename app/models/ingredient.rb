class Ingredient < ApplicationRecord
  belongs_to :dish
  belongs_to :provider
  has_many :price_lists
  has_many :recipe_items

  validates :name, :dish, presence: true
end
