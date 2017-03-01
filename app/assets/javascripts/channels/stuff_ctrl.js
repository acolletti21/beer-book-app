(function() {
  "use strict";

  angular.module("app").controller("stuffCtrl", function($scope, $http){
    $scope.setup = function() {
        $http.get('/api/v1/pairings.json').then(function(response){
        $scope.pairings = response.data;
      });
    };

    $scope.addPairing = function(newTitle, newAuthor, newGenre, newBeerName, newAlcohol) {
      var pairing = {
                      title: newTitle,
                      author: newAuthor, 
                      genre: newGenre,
                      beer_name: newBeerName,
                      alcohol: newAlcohol
                    };
      $http.post('/api/v1/pairings.json', pairing).then(function(response) {
        $scope.pairings.push(response.data);
        $scope.newPairingTitle = null;
        $scope.newPairingAuthor = null;
        $scope.newPairingGenre = null;
        $scope.newPairingBeerName = null;
        $scope.newPairingAlcohol = null;
      }, function(errors) {
        $scope.errors = errors.data;
      });
    };

    $scope.toggleOrderAttribute = function(attribute) {
      if (attribute === $scope.orderAttribute) {
        $scope.ascending = true;
      } else {
        $scope.ascending = false;
      }
      $scope.orderAttribute = attribute;
    };

    $scope.arrowForOrder = function(attribute) {
      if (attribute === $scope.orderAttribute) {
        return $scope.descending ? "^" : "v";
      } else {
        return " ";
      }
    };

    window.scope = $scope;
  });
}());