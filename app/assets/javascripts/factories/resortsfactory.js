(function(){

  angular
    .module('MainApp')
    .factory('Resort', function($resource) {

      // GET request in the factory
      self.resorts = Resorts.query();

    });

})();