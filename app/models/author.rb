class Author < ApplicationRecord
  has_many :recipes
  validates :name, :surname, presence: true

  def full_name
    "#{name} #{surname}"
  end
end
