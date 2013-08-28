if (!window.tuneTree?)
  window.tuneTree = {app: {}}

window.tuneTree.app.ngAppServices = angular.module('ngApp.services',[])
window.tuneTree.app.ngAppDirectives = angular.module('ngApp.directives', [])
window.tuneTree.app.ngAppFilters = angular.module('ngApp.filters', [])

window.tuneTree.app.ngApp = angular.module('ngApp', ['ngAppApi', 'ngApp.services', 'ngApp.directives', 'ngApp.filters'])