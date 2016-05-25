json.extract! @review, :id, :content, :rating, :film_id, :user_id, :created_at, :updated_at
json.comments @review.comments