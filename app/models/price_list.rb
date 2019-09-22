class PriceList < ApplicationRecord
  belongs_to :provider
  belongs_to :ingredient

  validates :price, :provider, :ingredient, presence: true
end
