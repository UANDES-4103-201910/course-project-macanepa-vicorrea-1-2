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