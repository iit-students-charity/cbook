class Provider < ApplicationRecord
  has_many :ingredients
  has_many :price_lists

  validates :name, presence: true
end
