window.app.ngApp.config [
  "$routeProvider"
  "$locationProvider"
  ($routeProvider, $locationProvider) ->
    $locationProvider.html5Mode true
    $routeProvider.when("/",
      controller: 'ngAppCtrl'
      templateUrl: $.oldUrl("/tuneTree/templates/index.html")
    ).when("/track/:trackId",
      controller: 'trackCtrl'
      templateUrl: $.oldUrl("/tuneTree/templates/track.html")
    ).when("/track/:trackId/lyrics",
      controller: 'lyricsCtrl'
      templateUrl: $.oldUrl("/tuneTree/templates/lyrics.html")
    ).when("/artist/:artistId/",
      controller: 'artistCtrl'
      templateUrl: $.oldUrl("/tuneTree/templates/artist.htm")
    ).otherwise redirectTo: '/'
]