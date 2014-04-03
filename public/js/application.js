
$(document).ready(function() {
  $("form").submit(function(event) {
    event.preventDefault();
    console.log(event)
    $.post( "/grandma", $(this).serialize() {} );
  });
});
