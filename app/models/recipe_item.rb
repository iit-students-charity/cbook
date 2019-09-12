class RecipeItem < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  validates :gram_per_kilogram_of_dish, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1000 }

  default_scope { order(created_at: :desc) }

  def colories
    colories_per_gram * gram_per_kilogram_of_dish
  end
end
