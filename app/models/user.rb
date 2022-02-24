class User < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             dependent: :destroy

  has_many   :favorite_dishes,
             class_name: "Like",
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    created_at
  end
end
