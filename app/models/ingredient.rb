class Ingredient < ApplicationRecord
  belongs_to :dish
  belongs_to :provider
  has_many :price_lists

  validates :name, :dish, presence: true
  validates :gram_per_kilogram_of_dish, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1000 }
end
