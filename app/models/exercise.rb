class Exercise < ApplicationRecord
  # Direct associations

  has_many   :exercise_elements,
             :dependent => :destroy

  has_many   :workout_exercises,
             :dependent => :destroy

  # Indirect associations

  has_many   :elements,
             :through => :exercise_elements,
             :source => :element

  # Validations

end
