class User < ActiveRecord::Base
	has_secure_password

	enum role: [:general, :judge, :admin]
end
