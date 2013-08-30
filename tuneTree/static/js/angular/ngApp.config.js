(function() {

  window.tuneTree.app.ngApp.config([
    "$routeProvider", "$locationProvider", function($routeProvider, $locationProvider) {
      $locationProvider.html5Mode(true);
      return $routeProvider.when("/", {
        controller: 'ngAppCtrl',
        templateUrl: "/tuneTree/templates/index.html"
      }).when("/track/:trackId", {
        controller: 'trackCtrl',
        templateUrl: "/tuneTree/templates/track.html"
      }).when("/track/:trackId/lyrics", {
        controller: 'lyricsCtrl',
        templateUrl: "/tuneTree/templates/lyrics.html"
      }).when("/artist/:artistId/", {
        controller: 'artistCtrl',
        templateUrl: "/tuneTree/templates/artist.html"
      }).otherwise({
        redirectTo: '/'
      });
    }
  ]);

}).call(this);
