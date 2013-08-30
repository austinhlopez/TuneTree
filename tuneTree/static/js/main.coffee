require.config
  waitSeconds: 0 #disable timeout so people w/ slow connections can load the app.
  paths:
    angular: "../lib/angular.min"
    angularResource: "https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular-resource"
    bootstrap: "../lib/bootstrap-3.0.0/dist/js/bootstrap.min"
    jquery: "../lib/jquery-1.10.2.min"
    highcharts: "../lib/highcharts/js/highcharts"
    # Angular app
    ngApp: "angular/ngApp"
    ngAppConfig: "angular/ngApp.config"
    ngAppApi: "angular/ngAppApi"
    angularStrap: "../lib/angular-strap-master/dist/angular-strap.min"
    artistCtrl: "angular/controllers/artistCtrl"
    lyricsCtrl: "angular/controllers/lyricsCtrl"
    trackCtrl: "angular/controllers/trackCtrl"
    ngAppCtrl: "angular/controllers/ngAppCtrl"
    # angular controllers
    # angular directives
    # angular filters
    # angular services
  shim:
    jquery:
      exports: "$"
    angular:
      deps: ["jquery"]
      exports: "angular"
    angularResource:
      deps: ["angular"]
    bootstrap:
      deps: ["jquery"]
      exports: "$.fn.popover"
    highcharts:
      deps: ["jquery"]
      exports: "Highcharts"
    #Angular app
    ngApp:
      deps: [
        "angular"
        "angularStrap"
        ]
      exports: "window.tuneTree.app.ngApp"
    ngAppConfig:
      deps: ["ngApp", "angular"]
    ngAppApi:
      deps: ["ngApp", "angular"]
    angularStrap:
      deps: [
        "angular"
        "bootstrap"
      ]
    # Angular controllers
    artistCtrl:
      deps: ["ngApp"]
    lyricsCtrl:
      deps: ["ngApp"]
    trackCtrl:
      deps: ["ngApp"]
    ngAppCtrl:
      deps: ["ngApp"]
    # Angular directives
    # Angular filters
    # Angular services

  priority: ["angular", "angularResource"]

require [
  "angular"
  "angularResource"
  "bootstrap"
  "jquery"
  "highcharts"
  "ngApp"
  "ngAppConfig"
  "ngAppApi"
  "angularStrap"
  "artistCtrl"
  "lyricsCtrl"
  "trackCtrl"
  "ngAppCtrl"
]
, (angular, angularResource, ngApp) ->
  "use strict"
  angular.bootstrap(window.document, ['ngApp'])