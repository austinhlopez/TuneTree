(function() {

  require.config({
    waitSeconds: 0,
    paths: {
      angular: "../lib/angular.min",
      angularResource: {
        deps: ["angular"]
      },
      bootstrap: "../lib/bootstrap.2.3.1",
      jquery: "../lib/jquery-1.2.10.min",
      highcharts: "../lib/highcharts",
      ngApp: "angular/app",
      ngAppappConfig: "angular/ngApp.config",
      ngAppApi: "angular/ngAppApi",
      angularStrap: "../lib/angular-strap-master"
    },
    shim: {
      jquery: {
        exports: "$"
      },
      angular: {
        deps: ["jquery"],
        exports: "angular"
      },
      bootstrap: {
        deps: ["jquery"],
        exports: "$.fn.popover"
      },
      highcharts: {
        deps: ["jquery"],
        exports: "Highcharts"
      },
      ngApp: {
        deps: ["angular", "angularStrap"],
        exports: "window.app.ngApp"
      },
      appConfig: {
        deps: ["ngApp"]
      },
      appApi: {
        deps: ["ngApp"]
      },
      angularStrap: {
        deps: ["angular", "bootstrap"]
      }
    },
    priority: ["angular", "angularResource"]
  });

  require(["angular", "angularResource", "bootstrap", "jquery", "highcharts", "ngApp", "ngAppConfig", "ngAppApi", "angularStrap"], function(angular, angularResource, ngApp) {
    "use strict";    return angular.bootstrap(window.document, ['ngApp']);
  });

}).call(this);
