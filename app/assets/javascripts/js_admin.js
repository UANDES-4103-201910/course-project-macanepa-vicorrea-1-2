function showReportPost(event) {
    var data = $(event.currentTarget).data();
    var owner = data.owner;
    var title = data.title;
    var postId = data.postId;
    $('#post-title').text(title);
    $('#post-owner').text(owner);
    $('#hidden-post-id-report').attr("value", postId);
}

function showMakeUserAdmin(event) {
    var data = $(event.currentTarget).data();
    var email = data.email;
    var userId = data.userId;
    $('#make-user-admin-email').text(email);
    $('#hidden_new_admin_user_id').val(userId);
}

function showEditUser(event) {
    var data = $(event.currentTarget).data();
    var email = data.email;
    var userId = data.userId;
    $('#email-edit-user-modal').text(email);
    $('#hidden-user-id-for-password-user-modal').val(userId);
}

function showEditAdmin(event) {
    var data = $(event.currentTarget).data();
    var email = data.email;
    var adminId = data.adminId;
    var geofenceId = data.geofenceId;
    var userId = data.userId;
    $('#edit-admin-email').text(email);
    $('#hidden-admin-id-for-geofence').val(adminId);
    $('#hidden-user-id-for-password-admin-modal').val(userId);
    $('.actual-geofence').val(geofenceId)
}

function showReportsAjax(event) {
    var data = $(event.currentTarget).data();
    var postTitle = data.title;
    var postOwner = data.owner;
    var postId = data.postId;
    $('#reported-post-title').text(postTitle);
    $('#reported-post-owner').text(postOwner);
    tableBody = $('#reports-table-body');
    $.get('/post/see_my_reports',
        { postId: postId } )
        .done((data) => {
            tableBody.empty();
            for (i = 0; i < data.length; i++){
                var content = data[i].content;
                var user = data[i].user;
                var date = data[i].date;
                tableBody.append("<tr>" +
                    "<td>" + user + "</td>" +
                    "<td>" + content + "</td>" +
                    "<td>" + date + "</td>" +
                    "</tr>")
                }
            $('#reports-count').text(i);
        })
        .fail((e) => {
            // console.log("error");
        })
}

function showOnlyCurrentObjectsInList(object_type){
    $('.' + object_type + '-row-have-exit-date').show();
}

function showAllObjectsInList(object_type){
    $('.' + object_type + '-row-have-exit-date').hide();
}

function searchInTable(inputSearchId, tableId, checkBoxId) {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById(inputSearchId);
    filter = input.value.toUpperCase();
    table = document.getElementById(tableId);
    tr = table.getElementsByTagName("tr");
    th = table.getElementsByTagName("th");
    var haveHistory = false;
    var exitDateCol;
    if (inputSearchId === 'inputSearchBlacklist' || inputSearchId === 'inputSearchSuspensionList' || inputSearchId === 'inputSearchBlockList'){
        haveHistory = true;
        exitDateCol = 2;
    }
    else if (inputSearchId === 'inputSearchDumpster'){
        haveHistory = true;
        exitDateCol = 3;
    }
    var checkBox;
    var checked;
    if (checkBoxId){
        checkBox = $('#' + checkBoxId);
        checked = checkBox.prop('checked');
    }
    else {
        checked = true;
    }

    for (i = 1; i < tr.length; i++) {
        showThis = false;
        haveExitDate = false;
        var tdExitDate;
        if (haveHistory){
            tdExitDate = tr[i].getElementsByTagName(    "td")[exitDateCol];
        }
        if (tdExitDate){
            if (tdExitDate.innerText.length > 0){
                haveExitDate = true;
            }
        }
        if (checked){
            for (col = 0; col < th.length - 1; col++) {
                td = tr[i].getElementsByTagName("td")[col];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        showThis = true;
                    }
                }
            }
        }
        else {
            if (!haveExitDate){
                for (col = 0; col < th.length - 1; col++) {
                    td = tr[i].getElementsByTagName("td")[col];
                    if (td) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            showThis = true;
                        }
                    }
                }
            }
        }

        if (showThis){
            tr[i].style.display = "";
        }
        else {
            tr[i].style.display = "none";
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

    $('[data-btn-type = "report-post"]').click(showReportPost);
    $('[data-btn-type = "make-user-admin"]').click(showMakeUserAdmin);
    $('[data-btn-type = "edit-user"]').click(showEditUser);
    $('[data-btn-type = "edit-admin"]').click(showEditAdmin);
    $('[data-btn-type = "view-reports"]').click(showReportsAjax);
});