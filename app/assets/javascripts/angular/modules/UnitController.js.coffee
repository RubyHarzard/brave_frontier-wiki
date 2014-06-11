# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

app = angular.module('bf-unit', [])

app.controller 'UnitListController', ['$http', ($http) ->
  self = this
  $http.get('/api/v1/units').success (data) ->
    self.units = data.units
  true
]