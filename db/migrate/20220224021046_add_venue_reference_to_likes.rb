class AddVenueReferenceToLikes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :likes, :venues
    add_index :likes, :venue_id
    change_column_null :likes, :venue_id, false
  end
end
