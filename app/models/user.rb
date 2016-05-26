class User < ActiveRecord::Base
	has_secure_password
	has_many :comments
	has_many :reviews
	enum role: [:general, :judge, :admin]

  def full_name
    "#{first_name} #{last_name}"
  end
end
