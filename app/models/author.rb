class Author < ApplicationRecord
  has_many :recipes
  validates :name, :surname, presence: true
end
