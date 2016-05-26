json.extract! @category, :id, :name, :created_at, :updated_at
json.films @category.films do |film|
  json.extract! film, :id, :name, :description, :image_url, :created_at, :updated_at
  json.url film_url(film, format: :json)
end
