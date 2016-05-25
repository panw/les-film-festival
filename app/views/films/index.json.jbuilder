json.array!(@films) do |film|
  json.extract! film, :id, :category_id, :name, :image_url, :description
  json.url film_url(film, format: :json)
end
