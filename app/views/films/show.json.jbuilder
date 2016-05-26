json.extract! @film, :id, :category_id, :name, :image_url, :description, :created_at, :updated_at

json.reviews @film.reviews do |review|
  json.extract! review, :id, :stars, :content, :user, :created_at, :updated_at
  json.url film_review_url(@film, review, format: :json)
end
