# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $('#yes').bind 'click', ->
    $('#yes_form').submit()
  $('#no').bind 'click', ->
    $('#no_form').submit()
  $('#show_answer').bind 'click', ->
    $('#answer').fadeIn('slow')
