window.app.ngApp.config [
  "$routeProvider"
  "$locationProvider"
  "$httpProvider"
  ($routeProvider, $locationProvider, $httpProvider) ->
    $locationProvider.html5Mode true
    $httpProvider.responseInterceptors.push 'httpErrorHandler'
    $routeProvider.when("/",
      controller: 'ngAppCtrl'
      templateUrl: $.oldUrl("/static/templates/index.html")
    ).when("/track/:trackId",
      controller: 'trackCtrl'
      templateUrl: $.oldUrl("/static/templates/track.html")
    ).when("/track/:trackId/lyrics",
      controller: 'lyricsCtrl'
      templateUrl: $.oldUrl("/static/templates/lyrics.html")
    ).otherwise redirectTo: '/'
]