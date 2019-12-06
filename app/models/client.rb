class Client < ApplicationRecord
  # Direct associations

  has_many   :workouts,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
