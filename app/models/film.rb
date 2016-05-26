class Film < ActiveRecord::Base
  belongs_to :category
  has_many :reviews

  def category_name
    category.name
  end
end
