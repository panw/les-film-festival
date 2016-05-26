json.extract! @category, :id, :name
json.films @category.films do |film|
  json.extract! film, :id, :name, :description, :image_url
  json.url film_url(film, format: :json)
end
