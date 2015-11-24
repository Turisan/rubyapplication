// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

/*
function validateForm() {
    var x = document.forms["myForm"]["fname"].value;
    var y = document.forms["myForm"]["pass"].value;
    var z = document.forms["myForm"]["passC"].value;
	if (x == null || x == "") {
        alert("Name must be filled out");
        return false;
    }
    if (y.length <= 6 || y == "")
	alert("Password is incorrect");
        return false;
	
	
	if (z != y || z == "")
	alert("Password doesn't match");
		return false;
}
*/
//javascript get

function httpGet(theUrl)
{
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open( "GET", theUrl, false ); // false for synchronous request
    xmlHttp.send( null );
    return xmlHttp.responseText;
}

function httpGetAsync(theUrl, callback)
{
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function() { 
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
            callback(xmlHttp.responseText);
    }
    xmlHttp.open("GET", theUrl, true); // true for asynchronous 
    xmlHttp.send(null);
}


//sidebar filler code 

function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
	center: {lat: 36.7500, lng: -119.7667},
	zoom: 8
  /*
    zoom: 12,
    center: {lat: 37.06, lng: -95.68}
	*/
  });

  var kmlLayer = new google.maps.KmlLayer({
    url: 'http://kml-samples.googlecode.com/svn/trunk/kml/Placemark/placemark.kml',
    suppressInfoWindows: true,
    map: map
  });

  kmlLayer.addListener('click', function(kmlEvent) {
    var text = kmlEvent.featureData.description;
    showInContentWindow(text);
  });

  function showInContentWindow(text) {
    var sidediv = document.getElementById('content-window');
    sidediv.innerHTML = text;
  
  
  
  }
}

//Map specs

 /* map = new google.maps.Map(document.getElementById('map'), {
  center: {lat: 36.7500, lng: -119.7667},
  zoom: 8
});
*/

    var geocoder = new google.maps.Geocoder();
/*
  document.getElementById('submit').addEventListener('click', function() {
    geocodeAddress(geocoder, map);
  });
}
*/
function geocodeAddress(geocoder, resultsMap) {
  var address = document.getElementById('address').value;
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      resultsMap.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: resultsMap,
        position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}