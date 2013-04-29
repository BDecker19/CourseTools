$(document).ready(function() {

  $('body').bind("ajax:beforeSend", function() {
    console.log("Sayonara AJAX Request!");
  }).bind("ajax:success", function(e, cool_beans) {
    console.log("success!");
    $("#comments").append(cool_beans);


  }).bind("ajax:error", function(e, data) {
    console.log("problem...");
  }).bind("ajax:complete", function(status) {
    console.log("Welcome back");
  });


});

// // also works with...
// $(document).ready ->
//   $("#comments").on("ajax:success", (e, data, status, xhr) ->
//     $("#comments").append (data)
//   ).bind "ajax:error", (e, xhr, status, error) ->
//     $("#comments").append "<p>ERROR</p>"