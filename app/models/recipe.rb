class Recipe < ApplicationRecord
  belongs_to :author
  belongs_to :dish
  has_many :recipe_items

  validates :name, :dish, :description, presence: true
end
