json.extract! user, :id, :name, :phone, :mail, :created_at, :updated_at
json.url user_url(user, format: :json)
