class Element < ApplicationRecord
  # Direct associations

  has_many   :exercise_elements,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
