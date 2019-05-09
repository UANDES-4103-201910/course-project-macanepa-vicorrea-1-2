// $(document).ready(function () {
//     $('#navbar-app').hide();
//     $('#page-app').hide();
//     $('#footer-app').hide();
// });

function start() {
    $('#start-button').hide();
    $('#navbar-app').show();
    $('#page-app').show();
    $('#footer-app').show();

}

function startAdmin() {
    window.location.href = "http://localhost:3000/admin";
    // $('#user-is-regular').remove();
    // $('#user-is-guest').remove();

    // $('#admin-start-button').hide();
    // $('#navbar-app').show();
    // $('#page-app').show();
    // $('#footer-app').show();

}

function startRegularUser() {
    window.location.href = "http://localhost:3000/?user_id=1";
    // $('#user-is-admin').remove();
    // $('#user-is-guest').remove();

    // $('#regular-user-start-button').hide();
    // $('#navbar-app').show();
    // $('#page-app').show();
    // $('#footer-app').show();
    // $('#title-sub-text').hide();
}

function startGuestUser() {
    window.location.href = "http://localhost:3000/guest";
    // $('#user-is-admin').remove();
    // $('#user-is-regular').remove();

    // $('#guest-user-start-button').hide();
    // $('#navbar-app').show();
    // $('#page-app').show();
    // $('#footer-app').show();
    // $('#title-sub-text').hide();
}