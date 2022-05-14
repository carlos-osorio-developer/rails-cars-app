json.extract! car, :id, :name, :description, :image_url, :model, :hourly_rate, :user_id, :created_at, :updated_at
json.url car_url(car, format: :json)
