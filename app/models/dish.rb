class Dish < ApplicationRecord
  belongs_to :group
  has_many :recipes, dependent: :destroy

  validates :name, presence: true
end
