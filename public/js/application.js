$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  $('.upvote').click(function(event) {
    event.preventDefault();
    var post_id = $(event.target).data('post-id')
    var upvote = $(event.target).data('upvote')
    form_data = {'post_id': post_id, 'vote': 1}
    $.post('/post_upvote', form_data, function(response) {
    });
    $(event.target).attr('value', upvote + 1)
  });
});



  // form_data = {'time': this.time, 'winner': this.winner }
  // $.post("/game", form_data, function(response){
  // });
