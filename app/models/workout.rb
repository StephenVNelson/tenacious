class Workout < ApplicationRecord
  # Direct associations

  has_many   :workout_exercises,
             :dependent => :destroy

  belongs_to :client,
             :counter_cache => true

  belongs_to :user,
             :required => false,
             :counter_cache => true

  # Indirect associations

  has_many   :exercises,
             :through => :workout_exercises,
             :source => :exercise

  # Validations

end
