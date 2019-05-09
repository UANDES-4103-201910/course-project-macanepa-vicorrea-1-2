function showInfoPostInDumpster(event) {
    var data = $(event.currentTarget).data();
    var dumpsterTitle = data.dumpsterTitle;
    var dumpsterOwner = data.dumpsterOwner;
    $('#dump-title').text(dumpsterTitle);
    $('#dump-owner').text(dumpsterOwner);
}

$(document).ready( function () {
    $('[data-btn-type="remove-from-dumpster"]').click(showInfoPostInDumpster);
});