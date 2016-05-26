json.extract! @film, :id, :name, :category_name, :image_url, :description, :created_at, :updated_at

json.reviews @film.reviews do |review|
  json.extract! review, :id, :stars, :content, :created_at, :updated_at
  json.url film_review_url(@film, review, format: :json)
  json.user review.user, :first_name, :last_name, :role
end
