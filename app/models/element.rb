class Element < ApplicationRecord
  # Direct associations

  belongs_to :category,
             :class_name => "ElementCategory",
             :counter_cache => true

  has_many   :exercise_elements,
             :dependent => :destroy

  # Indirect associations

  has_many   :exercises,
             :through => :exercise_elements,
             :source => :exercise

  # Validations

end
