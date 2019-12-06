class Workout < ApplicationRecord
  # Direct associations

  belongs_to :client,
             :counter_cache => true

  belongs_to :user,
             :required => false,
             :counter_cache => true

  # Indirect associations

  # Validations

end
