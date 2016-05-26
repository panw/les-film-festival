json.extract! @review, :id, :content, :stars, :created_at, :updated_at
json.film do
  json.name @review.film.name
  json.url film_url(@review.film, format: :json)
  json.category_name @review.film.category_name
end
json.user @review.user, :first_name, :last_name, :role
json.comments @review.comments

json.comments @review.comments do |comment|
  json.extract! comment, :id, :content, :created_at, :updated_at
  json.user comment.user, :first_name, :last_name, :role
end
