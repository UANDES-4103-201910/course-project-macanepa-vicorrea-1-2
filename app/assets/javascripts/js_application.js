function startAdmin() {
    window.location.href = "http://localhost:3000/admin";

}

function startRegularUser() {
    window.location.href = "http://localhost:3000/regular?user_id=1";
}

function startGuestUser() {
    window.location.href = "http://localhost:3000/guest";
}

$(document).ready(function () {
    setTimeout(function () {
        $('#notice').hide();
    }, 3000);

    setTimeout(function () {
        $('#alert').hide();
    }, 3000);
});