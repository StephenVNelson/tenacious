class ExerciseElement < ApplicationRecord
  # Direct associations

  belongs_to :element

  belongs_to :exercise

  # Indirect associations

  # Validations

end
