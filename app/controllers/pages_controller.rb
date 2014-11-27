class PagesController < ApplicationController

	def home
		gon.lat = 28.57
		gon.lng = 77.32
  	end
end
