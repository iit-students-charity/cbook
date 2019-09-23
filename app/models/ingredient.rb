class Ingredient < ApplicationRecord
  belongs_to :provider
  has_many :price_lists, dependent: :destroy
  has_many :recipe_items, dependent: :destroy

  validates :name, presence: true

  def last_price
    price_lists.order(created_at: :asc).last&.price
  end
end
