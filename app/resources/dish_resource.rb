class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :venue_id, :integer
  attribute :item, :string
  attribute :cuisine_id, :integer
  attribute :description, :string
  attribute :user_id, :integer

  # Direct associations

  belongs_to :cuisine

  has_many   :favorite_dishes,
             resource: LikeResource

  belongs_to :user

  # Indirect associations

end
