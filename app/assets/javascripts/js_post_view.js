function showPost(event) {
    var data = $(event.currentTarget).data();
    console.log(data);
    // var postId = data.post;
}

function multiply(number){
    returnValule = number*2;
    return returnValule;
}

function initMap(lat, lng, id) {

    var myCoords = new google.maps.LatLng(lat, lng);
    var mapOptions = {
        center: myCoords,
        zoom: 14
    };
    var map = new google.maps.Map(document.getElementById('map-'+id), mapOptions);

    var marker = new google.maps.Marker({
        position: myCoords,
        map: map
    });

}



$(document).ready( function () {
    $('[data-btn-type="show-post"]').click(showPost);
});

