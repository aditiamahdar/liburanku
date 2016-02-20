# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

destination_add_geocomplete_and_map = (coords)->
  location =
    if coords
      "#{coords.latitude}, #{coords.longitude}"
    else
      'indonesia'

  $('.js-destination-address').geocomplete
    map: '.js-destination-map'
    location: location
    markerOptions:
      draggable: true

  $('.js-destination-address').bind 'geocode:dragged', (ev, coords) ->
    $('.js-destination-latitude').val(coords.lat())
    $('.js-destination-longitude').val(coords.lng())

destination_get_user_coordinates = ->
  if navigator.geolocation
    navigator.geolocation.getCurrentPosition (position) ->
      $('.js-destination-latitude').val(position.coords.latitude)
      $('.js-destination-longitude').val(position.coords.longitude)

      destination_add_geocomplete_and_map(position.coords)
  else
    alert('Geolocation is not supported by this browser.')
    destination_add_geocomplete_and_map()
  return

$ ->
  destination_get_user_coordinates()
