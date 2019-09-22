class Recipe < ApplicationRecord
  belongs_to :author
  belongs_to :dish
  has_many :recipe_items, dependent: :destroy

  validates :name, :dish, :description, presence: true

  def colories
    recipe_items.map(&:colories).inject(:+) || 0
  end
end
