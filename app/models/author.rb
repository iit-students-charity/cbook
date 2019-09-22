class Author < ApplicationRecord
  has_many :recipes, dependent: :destroy
  validates :name, :surname, presence: true

  def full_name
    "#{name} #{surname}"
  end
end
