# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

app = angular.module('bf-unit', [])

app.controller('UnitListController', ($scope, $http) ->
  $http.get('/api/v1/units').success (data) ->
    $scope.units = data.units
  $scope.predicate = 'number'
)