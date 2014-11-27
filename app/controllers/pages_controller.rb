class PagesController < ApplicationController

	def home
		gon.lat = 28.57
		gon.lng = 77.32
		gon.heading = "Within 5 miles of your location"
		gon.infoWindowContent = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">Within 5 miles of your location</h1>'+
      '<div id="bodyContent">'+
      '<p><img src="images/icons/gas_station.png"/><a href=""><big>7 gas stations</big></a></p>'+
      '<p><img src="images/icons/restaurants.png"/><a href=""><big>3 restaurants</big></a></p>'+
      '<p><img src="images/icons/theatre.png"/><a href=""><big>1 theatre</big></a></p>'+
      '<p><img src="images/icons/bar.png"/><a href=""><big>5 bars</big></a></p>'+
      '<p>Attribution: Uluru, <a href="http://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
      'http://en.wikipedia.org/w/index.php?title=Uluru</a> '+
      '(last visited June 22, 2009).</p>'+
      '</div>'+
      '</div>'


		
		
	end
end
