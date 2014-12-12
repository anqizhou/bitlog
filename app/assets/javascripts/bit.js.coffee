# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
  $('#bit_post_id').change ->
    postTitle = $( "#bit_post_id" ).val()
    if postTitle != ""
      $("#title_input").addClass("hidden")
    else
      $("#title_input").removeClass("hidden")

  $('#clear_input').click ->
    $( "textarea" ).val("")