class Dish < ApplicationRecord
  belongs_to :group
  has_many :recipes
  has_many :ingredients

  validates :name, presence: true
end
