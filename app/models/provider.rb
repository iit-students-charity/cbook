class Provider < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  has_many :price_lists, dependent: :destroy

  validates :name, presence: true
end
