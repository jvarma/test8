class Biz::SellersController < ApplicationController
	def new
		@seller = Seller.new
  	end
  
  	def show
  		@seller = Seller.find(params[:id])
  		@title = "#{@seller.name} : Profile"
  	end

  	def create
  		#@seller = Seller.new(params[:seller])
  		@seller = Seller.new(seller_params)
  		if @seller.save
  			flash[:success] = "Welcome to OnTheGo!"
  			redirect_to @seller
  		else
  			render 'new'
  		end
  	end

  	private

  	def seller_params
  		params.require(:seller).permit(:name, :email, :password, :password_confirmation)
  	end

end
