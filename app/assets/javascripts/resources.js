$(document).ready ->
  $("#comments").on("ajax:success", (e, data, status, xhr) ->
    $("#comments").append (data)
  ).bind "ajax:error", (e, xhr, status, error) ->
    $("#comments").append "<p>ERROR</p>"