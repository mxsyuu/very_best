class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.integer :venue_id
      t.string :item
      t.integer :cuisine_id
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
