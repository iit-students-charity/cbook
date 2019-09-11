class PriceList < ApplicationRecord
  belongs_to :provider
  belongs_to :ingredient

  validates :date, :price, :provider, :ingredient, presence: true
end
