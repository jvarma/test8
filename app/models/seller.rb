class Seller < ActiveRecord::Base
	has_secure_password

	# Constants
	EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	# Callbacks
	before_save { self.email = email.downcase }
	before_create :create_remember_token

	# Validations
	# :name
	# :email
	# :password
	validates :name, presence: true, length: { maximum: 50	 }
	validates :email, presence: true, format: { with: EMAIL_FORMAT }, uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 6 }


	def Seller.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def Seller.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

		def create_remember_token
			self.remember_token = Seller.digest(Seller.new_remember_token)
		end
end
