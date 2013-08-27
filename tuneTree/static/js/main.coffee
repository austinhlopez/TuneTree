require.config
  waitSeconds: 0 #disable timeout so people w/ slow connections can load the app.
  paths:
    angular: "../lib/angular.min"
    angularResource:
      deps: ["angular"]
    bootstrap: "../lib/bootstrap.2.3.1" #Not correct. Change.
    jquery: "../lib/jquery-1.2.10.min"
    highcharts: "../lib/highcharts"
    # Angular app
    ngApp: "angular/app"
    ngAppappConfig: "angular/ngApp.config"
    ngAppApi: "angular/ngAppApi"
    angularStrap: "../lib/angular-strap-master"
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
        [
      exports: "window.app.ngApp"
    appConfig:
      deps: ["ngApp"]
    appApi:
      deps: ["ngApp"]
    angularStrap:
      deps: [
        "angular"
        "bootstrap"
      ]
    # Angular controllers
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
]
, (angular, angularResource, ngApp) ->
  "use strict"
  angular.bootstrap(window.document, ['ngApp']