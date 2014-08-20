class SessionsController < ApplicationController
	def new
	end

	def create
		seller = Seller.find_by(email: params[:session][:email].downcase)
		if seller && seller.authenticate(params[:session][:password])
			# signin the seller
			sign_in seller
			redirect_to seller
		else
			# do not signin the seller
			flash.now[:danger] = "Either your email or your password is incorrect!"
			render 'new'
		end
	end

	def destroy
		if signed_in?
			sign_out
		end
		redirect_to root_url
	end
	
end
