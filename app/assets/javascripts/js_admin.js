function showInfoPostInDumpster(event) {
    var data = $(event.currentTarget).data();
    var dumpsterTitle = data.dumpsterTitle;
    var dumpsterOwner = data.dumpsterOwner;
    $('#dump-title').text(dumpsterTitle);
    $('#dump-owner').text(dumpsterOwner);
}

function showInfoRemoveFromList(event) {
    var data = $(event.currentTarget).data();
    var listType = data.listType;
    var removedUser = data.removedUser;
    console.log(listType, removedUser);
    $('#removed-user-text').text(removedUser);
    $('#modal-remove-from-list-title').text("Remove from " + listType);
    $('#removed-from-list-type-text').text(listType);
}

function showDeleteReportPost(event) {
    var data = $(event.currentTarget).data();
    var action = data.btnType;
    var owner = data.owner;
    var title = data.title;
    if (action === "delete-post") {
        $('#delete-report-title').text("Delete post");
        $('#delete-report-text').text("delete");
        $('#delete-report-button').addClass("btn-outline-danger")
    }
    else if (action === "report-post") {
        $('#delete-report-title').text("Report post");
        $('#delete-report-text').text("report");
        $('#delete-report-button').addClass("btn-outline-warning")
    }
    $('#post-title').text(title);
    $('#post-owner').text(owner);
}

function showDeleteUserAdminInfo(event) {
    var data = $(event.currentTarget).data();
    var email = data.email;
    var action = data.btnType;
    if (action === "delete-admin") {
        $('#delete-user-admin-title').text("Delete administrator");

    }
    else if (action === "delete-user") {
        $('#delete-user-admin-title').text("Delete user");
    }
    $('#user-mail-text').text(email);
}

function showMakeUserAdmin(event) {
    var data = $(event.currentTarget).data();
    $('#make-user-admin-text').text(data.email);
}

$(document).ready( function () {
    $('[data-btn-type="remove-from-dumpster"]').click(showInfoPostInDumpster);
    $('[data-btn-type="remove-from-list"]').click(showInfoRemoveFromList);
    $('[data-btn-type = "delete-post"]').click(showDeleteReportPost);
    $('[data-btn-type = "report-post"]').click(showDeleteReportPost);
    $('[data-btn-type = "delete-user"]').click(showDeleteUserAdminInfo);
    $('[data-btn-type = "delete-admin"]').click(showDeleteUserAdminInfo);
    $('[data-btn-type = "make-user-admin"]').click(showMakeUserAdmin);
});