class Dish < ApplicationRecord
  # Direct associations

  has_many   :favorite_dishes,
             :class_name => "Like",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    venue_id
  end

end
