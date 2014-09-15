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
Hangman.controller "GamesCtrl", ["$scope", "$http", ($scope, $http) ->

  # create button letters for guessing
  $scope.alphabets = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

  $scope.secretWord = []
  $scope.letters = []
  $scope.displayLetters = ""
  $scope.correctGuesses = ""
  $scope.hintOnes = []
  bodyCount = 0
  correctCount = 0

  $scope.getLetter = (letter) ->
    $scope.letters.push(letter)



] # close hangman controller

# Define Config for CSRF token
Hangman.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]