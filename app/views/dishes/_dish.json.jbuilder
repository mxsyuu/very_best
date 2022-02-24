json.extract! dish, :id, :venue_id, :item, :cuisine_id, :description, :user_id,
              :created_at, :updated_at
json.url dish_url(dish, format: :json)
