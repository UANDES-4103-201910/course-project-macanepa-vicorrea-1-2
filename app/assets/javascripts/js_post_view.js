function showPost(event) {
    var data = $(event.currentTarget).data();
    console.log(data);
    // var postId = data.post;
}

function multiply(number){
    returnValule = number*2;
    return returnValule;
}

$(document).ready( function () {
    $('[data-btn-type="show-post"]').click(showPost);
});