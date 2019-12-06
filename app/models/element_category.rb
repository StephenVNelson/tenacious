class ElementCategory < ApplicationRecord
  # Direct associations

  has_many   :elements,
             :foreign_key => "category_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
