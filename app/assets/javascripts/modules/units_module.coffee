# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

unitControllers = angular.module('unitControllers', [])

unitControllers.controller('UnitListCtrl', ($scope, $http) ->
  $http.get('/api/v1/units').success (data) ->
    $scope.units = data.units
)

unitControllers.controller('UnitDetailCtrl', ($scope, $routeParams) ->
  $scope.phoneId = $routeParams.id;
)