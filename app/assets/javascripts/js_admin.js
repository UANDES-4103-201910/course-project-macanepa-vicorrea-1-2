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
    var userId = data.objectId;
    $('#hidden-object-id').attr("value", userId);
    $('#hidden-object-type').attr("value", listType);
    $('#removed-user-text').text(removedUser);
    $('#modal-remove-from-list-title').text("Remove from " + listType);
    $('#removed-from-list-type-text').text(listType);
}

function showDeleteReportPost(event) {
    var data = $(event.currentTarget).data();
    var action = data.btnType;
    var owner = data.owner;
    var title = data.title;
    var actionButton = $('#delete-report-button');
    if (action === "delete-post") {
        $('#delete-report-title').text("Delete post");
        $('#delete-report-text').text("delete");
        actionButton.removeClass("btn-outline-warning");
        actionButton.addClass("btn-outline-danger");
    }
    else if (action === "report-post") {
        $('#delete-report-title').text("Report post");
        $('#delete-report-text').text("report");
        actionButton.removeClass("btn-outline-danger");
        actionButton.addClass("btn-outline-warning");

    }
    $('#post-title').text(title);
    $('#post-owner').text(owner);
}

function showDeleteUserInfo(event) {
    var data = $(event.currentTarget).data();
    var email = data.email;
    $('#user-mail-text').text(email);
    $('#hidden-user-mail').attr("value", email);
}

function showStopBeingAdmin(event) {
    var data = $(event.currentTarget).data();
    var email = data.email;
    $('#admin-mail-text').text(email);
    $('#hidden-admin-mail').attr("value", email);
}

function showMakeUserAdmin(event) {
    var data = $(event.currentTarget).data();
    $('#make-user-admin-text').text(data.email);
}

function showOnlyCurrentObjectsInList(object_type){
    $('.' + object_type + '-row-have-exit-date').show();
}

function showAllObjectsInList(object_type){
    $('.' + object_type + '-row-have-exit-date').hide();
}

$(document).ready( function () {
    $('.user-blacklist-row-have-exit-date').hide();
    $('.post-dumpster-row-have-exit-date').hide();
    $('.user-suspension-list-row-have-exit-date').hide();
    $('.user-block-list-row-have-exit-date').hide();
    $('[data-btn-type="remove-from-dumpster"]').click(showInfoPostInDumpster);
    $('[data-btn-type="remove-from-list"]').click(showInfoRemoveFromList);
    $('[data-btn-type = "delete-post"]').click(showDeleteReportPost);
    $('[data-btn-type = "report-post"]').click(showDeleteReportPost);
    $('[data-btn-type = "delete-user"]').click(showDeleteUserInfo);
    $('[data-btn-type = "make-user-admin"]').click(showMakeUserAdmin);
    $('[data-btn-type = "stop-being-admin"]').click(showStopBeingAdmin);
});