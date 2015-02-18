
(function(){ 

  angular
    .module('MainApp')
    .controller('MainController', MainController);

    MainController.$inject = ['ResortsFactory'];

    // Creating the MainController Function to go along with the Main Application

    function MainController(Resort){

      var self = this;

      console.log(self.resorts);

      // Resturn a list of resorts that come from the API referenced in the resorts factory
      self.resorts = Resort.query();

    };

})(); 