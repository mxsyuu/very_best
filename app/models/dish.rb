class Dish < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    venue_id
  end

end
