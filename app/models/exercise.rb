class Exercise < ApplicationRecord
  # Direct associations

  has_many   :workout_exercises,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
