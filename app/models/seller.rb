class Seller < ActiveRecord::Base
	# Constants
	EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	# Callbacks
	before_save { self.email = email.downcase }

	# Validations
	# :name
	# :email
	# :password
	validates :name, presence: true, length: { maximum: 50	 }
	validates :email, presence: true, format: { with: EMAIL_FORMAT }, uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 6 }
end
