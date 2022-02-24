class VenueResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :address, :string
  attribute :neighborhood, :string

  # Direct associations

  has_many   :likes

  # Indirect associations

  many_to_many :favorite_dishes,
               resource: DishResource

end
