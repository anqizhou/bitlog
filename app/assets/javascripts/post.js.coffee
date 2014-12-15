# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(".destroy-bit-btn").click (event) ->
  bitId = $(this).parent().attr('data-bit-id')
  $.ajax
    url: "/bits/#{bitId}.json"
    type: 'DELETE'
  .done (data, statusText) ->
    $( "div[data-bit-id = '#{bitId}']" ).remove()

$(".destroy-post-btn").click (event) ->
  postId = $(this).parent().attr('data-post-id')
  $.ajax
    url: "/posts/#{postId}.json"
    type: 'DELETE'
  .done (data, statusText) ->
    $( "div[data-post-id = '#{postId}']" ).remove()


$(".fa-newspaper-o").click (event) ->
  postId = $(this).parent().attr('data-post-id')
  $.ajax
    url: "/posts/#{postId}.json"
    type: 'PATCH'
  .done (data, statusText) ->
    console.log "returned data", data
    location.reload()