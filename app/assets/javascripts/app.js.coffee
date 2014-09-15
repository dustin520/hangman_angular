# Define App and dependencies
Hangman = angular.module("Hangman", ["ngRoute", "templates"])

# Setup the angular router
Hangman.config ["$routeProvider", "$locationProvider", ($routeProvider, $locationProvider) ->
  $routeProvider
    .when '/', 
      templateUrl: "index.html",
      controller: "GamesCtrl"
  .otherwise
      redirectTo: "/"

  $locationProvider.html5Mode(true)

]

# Hangman Controller
GamesCtrl.controller "GamesCtrl", ["$scope", "$http", ($scope, $http) ->



] # close hangman controller

# Define Config for CSRF token
Hangman.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]