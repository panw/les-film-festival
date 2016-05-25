json.extract! @film, :id, :category_id, :name, :image_url, :description, :created_at, :updated_at

json.reviews @film.reviews
