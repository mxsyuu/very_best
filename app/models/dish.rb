class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :favorite_dishes,
             class_name: "Like",
             dependent: :destroy

  belongs_to :user

  # Indirect associations

  has_many   :venues,
             through: :favorite_dishes,
             source: :venue

  # Validations

  # Scopes

  def to_s
    venue_id
  end
end
