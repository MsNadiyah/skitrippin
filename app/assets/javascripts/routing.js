// Configuring routing through Angular to create a Single Page Application
  
// Connecting the configuration of this file to the MainApp

(function(){ 
  angular
    .module('MainApp')
    .config(config)
    .run(run);

  function config($routeProvider, $locationProvider){

  // Getting rid of the preceding hashes
  
    $locationProvider.html5mode({ enabled: true, requireBase: true })  

  // Define the routes
    $routeProvider

    // Defines the website root
    .when('/', {
      title: "SkiTrippin - chase the powder!",
      templateURL: "index.html",
      controller: "MainController", // Specifies which controller will be referenced
      controllerAs: "main" // Creates an alias for the controller; how it will be referenced within the site
    }) // Closes the website root

    .when('/about', {
      title: "Who's behind SkiTrippin",
      templateURL: "about.html",
      controller: "MainController",
      controllerAs: "main"
    }) // Closes the about us routing 

    // Grabs the generic list of resorts
    .when('/resorts', {
      title: "SkiTrippin's mountain resorts",
      templateURL: "resorts.html",
      controller: "MainController",
      controllerAs: "main"
    })

    .otherwise({
      redirectTo: '/'
    });

  }

  function run($location, $rootScope){ 
  
    var changeRoute = function(event, current, previous){                   return $rootScope.title = current.$$route.title;                      
    };
  
    $rootScope.$on('$routeChangeSuccess', changeRoute);
  
    }

}).call(this);  