if (!window.ngApp?)
  window.ngApp = {app: {}}

window.app.ngAppServices = angular.module('ngApp.services',[])
window.app.ngAppDirectives = angular.module('ngApp.directives', [])
window.app.ngAppFilters = angular.module('ngApp.filters', [])

window.app.app = angular.module('ngApp', ['ngAppApi', 'ngApp.services', 'ngApp.directives', 'ngApp.filters'])