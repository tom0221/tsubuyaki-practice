json.extract! user_, :id, :created_at, :updated_at
json.url user__url(user_, format: :json)
