class PagesController < ApplicationController

	def home
		gon.lat = 28.57
		gon.lng = 77.32
		gon.heading = "Within 5 miles of your location"
		gon.infoWindowContent = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h2 id="firstHeading" class="firstHeading">Within 5 miles...</h2>'+
      '<div id="bodyContent">'+

		'<table style="width:100%">'+
  			'<tr>'+
    			'<td><img src="http://localhost:3000/icons/gas_station_24X24.png"/></td>'+
    			'<td><a href=""><big>7 gas stations</big></a></td>'+
    		'</tr>'+
  			'<tr>'+
    			'<td><img src="http://localhost:3000/icons/restaurants_24X24.png"/></td>'+
    			'<td><a href=""><big>3 restaurants</big></a></td>'+
    		'</tr>'+
  			'<tr>'+
    			'<td><img src="http://localhost:3000/icons/theatre_24X24.png"/></td>'+
    			'<td><a href=""><big>1 movie theatre</big></a></td>'+
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
end
