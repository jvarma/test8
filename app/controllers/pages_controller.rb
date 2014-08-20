class PagesController < ApplicationController
	def home
		if signed_in?
			redirect_to @current_seller
		end
  	end
end
