class PagesController < ApplicationController

	def home
		@page = "home"
		gon.lat = 28.57
		gon.lng = 77.32
		gon.heading = "Within 5 miles of your location"
		gon.infoWindowContent = '<div class="infowindow">'+
      '<h2 id="firstHeading" class="firstHeading">Within 5 miles...</h2>'+
      '<div id="bodyContent">'+

		'<table style="width:100%">'+
  			'<tr>'+
    			'<td><img src="http://localhost:3000/icons/gas_station_24X24.png"/></td>'+
    			'<td>'+
    				'<a href="http://localhost:3000/gas-stations"><big>3 gas stations</big></a>'+
				'</td>'+
    		'</tr>'+
  			'<tr>'+
    			'<td><img src="http://localhost:3000/icons/restaurants_24X24.png"/></td>'+
    			'<td><a href=""><big>5 restaurants</big></a></td>'+
    		'</tr>'+
  			'<tr>'+
    			'<td><img src="http://localhost:3000/icons/theatre_24X24.png"/></td>'+
    			'<td><a href="http://localhost:3000/movies"><big>1 movie theatre</big></a></td>'+
    		'</tr>'+
  			'<tr>'+
    			'<td><img src="http://localhost:3000/icons/bar_24X24.png"/></td>'+
    			'<td><a href=""><big>5 bars</big></a></td>'+
    		'</tr>'+
  			'<tr>'+
    			'<td><b style="color: red;">Offer</b>: Free car wash if you fill 10 gallons of any gas! <a href="">'+
      	'View details</a></td>'+
    		'</tr>'+
 			'<tr>'+
    			'<td><b style="color: red;">Offer</b>: Watch "The Gladiator" and the coke is on us! <a href="">'+
      	'View details</a></td>'+
    		'</tr>'+
   			
		'</table>'+
      '</div>'+
      '</div>'

		
	end

	def gas_stations
		@page = "gas"

		gon.lat = 28.57
		gon.lng = 77.32
		
		latlng = Array.new(3)

		lat = 28.5701
		lng = 77.3201
		latlng[0] = [lat, lng]

		lat = 28.5703
		lng = 77.3202
		latlng[1] = [lat, lng]

		lat = 28.5705
		lng = 77.3189
		latlng[2] = [lat, lng]

		gon.latlng = latlng
		
	end


	def movies
		@page = "movie"
		gon.lat = 28.57
		gon.lng = 77.32
		
		gon.theatre_lat = 28.5701
		gon.theatre_lng = 77.3181
		
	end
end
