json.array!(@users) do |user|
  json.extract! user, :id, :email, :first_name, :last_name, :image_url, :role
  json.url user_url(user, format: :json)
end
