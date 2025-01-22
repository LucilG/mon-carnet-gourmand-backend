class Collection < ApplicationRecord
  has_many :recipes, dependent: :destroy

  # Constantes
  NAME_MIN = 2
  NAME_MAX = 30

  # Validations
  # name
  validates :name,
    presence: true,
    uniqueness: true,
    length: { minimum: NAME_MIN, maximum: NAME_MAX }
end
