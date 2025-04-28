class Ingredient < ApplicationRecord
  belongs_to :recipe

  # Constantes
  # name
  NAME_MIN = 2
  NAME_MAX = 30
  # quantity
  QUANTITY_MIN = 1
  QUANTITY_MAX = 10000

  # Validations
  # name
  validates :name,
    presence: true,
    length: { minimum: NAME_MIN, maximum: NAME_MAX }
  # quantity
  validates :quantity,
    presence: true,
    numericality: { only_float: true },
    inclusion: { in: (QUANTITY_MIN..QUANTITY_MAX) }
  # unit
  validates :unit,
    presence: true
end
