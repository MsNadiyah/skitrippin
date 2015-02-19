(function(){

  angular
    .module('MainApp')
    .controller('MainController', MainController);

    MainController.$inject = ['$http'];

    // Creating the MainController Function to go along with the Main Application

    function MainController($http){

      var self = this;

      self.resorts = getResorts();

      function getResorts() {

        $http.get('/api/resorts').success( function (data, status, headers, config) {

          self.resorts = data;

        });

      }

       return self;

    };

})();
