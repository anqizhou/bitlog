# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(".destroy-bit-btn").click (event) ->
  bitId = $(this).parent().attr('data-id')
  $.ajax
    url: "/bits/#{bitId}.json"
    type: 'DELETE'
  .done (data, statusText) ->
    $( "div[data-id='#{bitId}']" ).remove()

