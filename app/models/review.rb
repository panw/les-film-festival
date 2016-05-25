class Review < ActiveRecord::Base
  belongs_to :film
  belongs_to :user
  has_many :comments

  def stars
  	self.rating.to_f / 2
  end

  def stars=(stars)
  	self.rating = stars * 2
  end
end
