function showInfoPostInDumpster(event) {
    var data = $(event.currentTarget).data();
    var dumpsterTitle = data.dumpsterTitle;
    var dumpsterOwner = data.dumpsterOwner;
    var postId = data.postId;
    $('#dump-title').text(dumpsterTitle);
    $('#dump-owner').text(dumpsterOwner);
    $('#hidden-post-dumpster-id').attr("value", postId);
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

function showDeletePost(event) {
    var data = $(event.currentTarget).data();
    var owner = data.owner;
    var title = data.title;
    var postId = data.postId;
    $('#post-title').text(title);
    $('#post-owner').text(owner);
    $('#hidden-post-id-delete').attr("value", postId);
}

function showReportPost(event) {
    var data = $(event.currentTarget).data();
    var owner = data.owner;
    var title = data.title;
    var postId = data.postId;
    $('#post-title').text(title);
    $('#post-owner').text(owner);
    $('#hidden-post-id-report').attr("value", postId);
}

function showDeleteUserInfo(event) {
    var data = $(event.currentTarget).data();
    var email = data.email;
    var userId = data.userId;
    $('#user-mail-text').text(email);
    $('#hidden-user-id').attr("value", userId);
}

function showStopBeingAdmin(event) {
    var data = $(event.currentTarget).data();
    var email = data.email;
    var adminId = data.adminId;
    $('#admin-mail-text').text(email);
    $('#hidden-admin-id').attr("value", adminId);
}

function showMakeUserAdmin(event) {
    var data = $(event.currentTarget).data();
    console.log(data);
    var email = data.email;
    var userId = data.userId;
    $('#make-user-admin-email').text(email);
    $('#hidden_new_admin_user_id').val(userId);
}

function showEditUser(event) {
    var data = $(event.currentTarget).data();
    var email = data.email;
    var userId = data.userId;
    console.log(data, email, userId);
    $('#email-edit-user-modal').text(email);
    $('#hidden-user-id-for-password-user-modal').val(userId);
}

function showEditAdmin(event) {
    var data = $(event.currentTarget).data();
    var email = data.email;
    var adminId = data.adminId;
    var geofence = data.geofence;
    var userId = data.userId;
    $('#edit-admin-email').text(email);
    $('#hidden-admin-id-for-geofence').val(adminId);
    $('#hidden-user-id-for-password-admin-modal').val(userId);
    $('#actual-geofence').val(geofence);
}


function showOnlyCurrentObjectsInList(object_type){
    $('.' + object_type + '-row-have-exit-date').show();
}

function showAllObjectsInList(object_type){
    $('.' + object_type + '-row-have-exit-date').hide();
}

function myFunction() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("manage-posts-table");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
        if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}

$(document).ready( function () {
    $('[data-tooltip = "tooltip"]').tooltip({
        trigger : 'hover'
    });

    $('.user-blacklist-row-have-exit-date').hide();
    $('.post-dumpster-row-have-exit-date').hide();
    $('.user-suspension-list-row-have-exit-date').hide();
    $('.user-block-list-row-have-exit-date').hide();



    // $('[data-btn-type = "remove-from-dumpster"]').click(showInfoPostInDumpster);
    // $('[data-btn-type = "remove-from-list"]').click(showInfoRemoveFromList);
    // $('[data-btn-type = "delete-post"]').click(showDeletePost);
    $('[data-btn-type = "report-post"]').click(showReportPost);
    // $('[data-btn-type = "delete-user"]').click(showDeleteUserInfo);
    $('[data-btn-type = "make-user-admin"]').click(showMakeUserAdmin);
    // $('[data-btn-type = "stop-being-admin"]').click(showStopBeingAdmin);
    $('[data-btn-type = "edit-user"]').click(showEditUser);
    $('[data-btn-type = "edit-admin"]').click(showEditAdmin);
});