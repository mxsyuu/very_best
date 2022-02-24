class Venue < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  has_many   :favorite_dishes,
             :through => :likes,
             :source => :dish

  # Validations

  # Scopes

  def to_s
    name
  end

end
