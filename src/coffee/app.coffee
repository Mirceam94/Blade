window.app = angular.module "app", []

window.app.config ($routeProvider, $locationProvider) ->

  $locationProvider.html5Mode true

  $routeProvider.when "/",
    controller: "homeC",
    templateUrl: "pages/home.html"

  $routeProvider.otherwise
    redirectTo: "/"

###
window.app.run ($rootScope) ->
  $rootScope.$on "$routeChangeSuccess", (e, current, prev) ->
###
