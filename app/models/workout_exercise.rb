class WorkoutExercise < ApplicationRecord
  # Direct associations

  belongs_to :workout,
             :counter_cache => true

  # Indirect associations

  # Validations

end
