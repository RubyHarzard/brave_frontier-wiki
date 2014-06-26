# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require twitter/bootstrap
#= require turbolinks
#= require angular
#= require angular-route
#= require_tree .


bfApp = angular.module('braveFrontierApp', ['ngRoute','unitControllers'])

bfApp.config ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.when '/',  redirectTo: '/units'
  $routeProvider.when '/units', templateUrl: '/units/index', controller: 'UnitListCtrl'
#  $routeProvider.when '/task_lists/:list_id', templateUrl: '/templates/task_list.html', controller: 'TodoListController'


# Makes AngularJS work with turbolinks.
$(document).on 'page:load', ->
  $('[ng-app]').each ->
    module = $(this).attr('ng-app')
    angular.bootstrap(this, [module])