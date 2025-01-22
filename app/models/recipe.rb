class Recipe < ApplicationRecord
  belongs_to :collection

  # Constantes
  # name
  NAME_MIN = 2
  NAME_MAX = 30
  # nb_people
  NBPEOPLE_MIN = 1
  NBPEOPLE_MAX = 20
  # prepa_time
  PREPATIME_MIN = 1
  PREPATIME_MAX = 600
  # cooking_time
  COOKINGTIME_MIN = 1
  COOKINGTIME_MAX = 600

  # Validations
  # name
  validates :name,
    presence: true,
    uniqueness: true,
    length: { minimum: NAME_MIN, maximum: NAME_MAX }
  # nb_people
  validates :nb_people,
    presence: true,
    numericality: { only_integer: true },
    inclusion: { in: (NBPEOPLE_MIN..NBPEOPLE_MAX) }
  # prepa_time
  validates :prepa_time,
    presence: true,
    numericality: { only_integer: true },
    inclusion: { in: (PREPATIME_MIN..PREPATIME_MAX) }
  # cooking_time
  validates :cooking_time,
    presence: true,
    numericality: { only_integer: true },
    inclusion: { in: (COOKINGTIME_MIN..COOKINGTIME_MAX) }
end
