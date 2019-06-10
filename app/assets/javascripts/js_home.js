$(document).ready(function () {
    $('[data-tooltip = "tooltip"]').tooltip();

    $('#add-attachments-button').attr('title', 'No selected attachments');
    $('#add-images-button').attr('title', 'No selected images');

    $("input[type = 'file']").on("change", function(){
        var numFiles = $(this).get(0).files.length;

        if ($(this).get(0).id === 'post_attachments'){
            if (numFiles > 1){
                $('#add-attachments-button').attr('title', numFiles + " attachments selected");
            }
            else {
                $('#add-attachments-button').attr('title', numFiles + " attachment selected");
            }
        }
        else if ($(this).get(0).id === 'post_images'){
            if (numFiles > 1){
                $('#add-images-button').attr('title', numFiles + " images selected");
            }
            else {
                $('#add-images-button').attr('title', numFiles + " image selected");
            }
        }
    });

});

function initMap2() {
    var lat = document.getElementById('lat').value;
    var lng = document.getElementById('lng').value;

    // if not defined create default position
    if (!lat || !lng){
        lat=51.5;
        lng=-0.125;
        document.getElementById('lat').value = lat;
        document.getElementById('lng').value = lng;
    }
    var myCoords = new google.maps.LatLng(lat, lng);
    var mapOptions = {
        center: myCoords,
        zoom: 14
    };
    var map = new google.maps.Map(document.getElementById('map-n'), mapOptions);
    var marker = new google.maps.Marker({
        position: myCoords,
        animation: google.maps.Animation.DROP,
        map: map,
        draggable: true
    });

    // refresh marker position and recenter map on marker
    function refreshMarker(){
        var lat = document.getElementById('lat').value;
        var lng = document.getElementById('lng').value;
        var myCoords = new google.maps.LatLng(lat, lng);
        marker.setPosition(myCoords);
        map.setCenter(marker.getPosition());
    }
    // when input values change call refreshMarker
    document.getElementById('lat').onchange = refreshMarker;
    document.getElementById('lng').onchange = refreshMarker;
    // when marker is dragged update input values
    marker.addListener('drag', function() {
        latlng = marker.getPosition();
        newlat=(Math.round(latlng.lat()*1000000))/1000000;
        newlng=(Math.round(latlng.lng()*1000000))/1000000;
        document.getElementById('lat').value = newlat;
        document.getElementById('lng').value = newlng;
    });
    // When drag ends, center (pan) the map on the marker position
    marker.addListener('dragend', function() {
        map.panTo(marker.getPosition());
    });
}
