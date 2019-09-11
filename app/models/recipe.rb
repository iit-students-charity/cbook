class Recipe < ApplicationRecord
  belongs_to :author

  validates :name, :dish, :description, presence: true
end
