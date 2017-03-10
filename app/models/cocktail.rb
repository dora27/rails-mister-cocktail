class Cocktail < ApplicationRecord
  has_many :ingredients,  through: :doses
  has_many :doses, dependent: :destroy

  # Validations
  validates :name, presence: true, uniqueness: true
end
