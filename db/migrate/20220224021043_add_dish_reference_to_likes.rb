class AddDishReferenceToLikes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :likes, :dishes
    add_index :likes, :dish_id
    change_column_null :likes, :dish_id, false
  end
end
