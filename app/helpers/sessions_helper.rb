module SessionsHelper
	def sign_in(seller)
		remember_token = Seller.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		seller.update_attribute(:remember_token, Seller.digest(remember_token))
		self.current_seller=seller
	end

	def current_seller=(seller)
		@current_seller = seller
	end

	def current_seller
		remember_token = Seller.digest(cookies[:remember_token])
		@current_seller ||= Seller.find_by(remember_token: remember_token)
	end

	def signed_in?
		!current_seller.nil?
	end

	def sign_out
		current_seller.update_attribute(:remember_token, Seller.digest(Seller.new_remember_token))
		cookies.delete(:remember_token)
		self.current_seller = nil
	end
end
