class PagesController < ApplicationController

	def home
		@page = "home"
		gon.lat = 28.57
		gon.lng = 77.32
		hostname = request.host_with_port()
		gas_station_url = "http://"+hostname+"/gas-stations"
		movies_url = "http://"+hostname+"/movies"
		hotels_url = "http://"+hostname+"/hotels"
		coupons_url = "http://"+hostname+"/coupons"
		gon.heading = "Within 5 miles of your location"
		gon.infoWindowContent = '<div class="infowindow">'+
      	'<div id="bodyContent">'+


      	'<div class="panel panel-primary">'+
  			'<div class="panel-heading"><big>Offers within 5 miles...</big></div>'+
  			'<table class="table">'+
				'<tr>'+
					'<td align="center">'+
						'<a href="http://www.latrattoriawv.com/10-off-coupon/"><img src="'+coupons_url+'/coupon_1.jpg"/></a>'+
					'</td>'+
					'<td align="center">'+
						'<a href="http://www.partycity.com/category/entertaining+serving.do"><img src="'+coupons_url+'/coupon_2.jpg"/></a>'+
					'</td>'+
					'<td align="center">'+
						'<a href="http://www.partycity.com/category/entertaining+serving.do"><img src="'+coupons_url+'/coupon_3.jpg"/></a>'+
					'</td>'+
				'</tr>'+
			'</table>'+
			'<table class="table">'+
				'<tr><td align="left">'+
					'<a href="">7 more offers!</a>'+
				'</td></tr>'+
			'</table>'+
		'</div>'+


		'<div class="panel panel-info">'+
  			'<div class="panel-heading"><b>Around you...</b></div>'+
  			'<ul class="list-group">'+
    			'<li class="list-group-item"><a href="'+gas_station_url+'"><big>3 gas stations</big></a></li>'+
    			'<li class="list-group-item"><a href=""><big>5 restaurants</big></a></li>'+
    			'<li class="list-group-item"><a href="'+movies_url+'"><big>1 movie theatre</big></a></li>'+
    			'<li class="list-group-item"><a href="'+hotels_url+'"><big>3 hotels</big></a></li>'+
  			'</ul>'+
		'</div>'+
      '</div>'+
      '</div>'

		
	end

	def gas_stations
		@page = "gas"
		gon.hostname = request.host_with_port()


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
		gon.hostname = request.host_with_port()
		@page = "movie"
		gon.lat = 28.57
		gon.lng = 77.32
		
		gon.theatre_lat = 28.5701
		gon.theatre_lng = 77.3181
		
	end

	def hotels
		@page = "hotel"
		gon.hostname = request.host_with_port()


		gon.lat = 28.57
		gon.lng = 77.32
		
		gon.hotel_lat = 28.5701
		gon.hotel_lng = 77.3181
		
	end

end
