
function initialize() {
  var myOptions = {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
}

function loadScript() {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyBm_j-O9x3F8_-lZv6d7FKZIuOO6m9pw9k&sensor=true&callback=initialize";
  document.body.appendChild(script);
}

window.onload = loadScript;
