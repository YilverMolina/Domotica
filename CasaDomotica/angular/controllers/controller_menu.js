app.controller('GeneralController', [
  '$scope',
  '$http',
  function ($scope, $http, $sce) {
      $scope.ruta = "";
      var URL = "";
      $scope.result = "Listado de sensores";
      $scope.resultData = "Datos de los sensores";

      $scope.getPartesVivienda = function () {
          $http.get(URL + '/api/default/get_partes_vivienda').success(function (data, status, headers, config) {
              $scope.listaPartesVivienda = data;
          }).error(function (data, status, headers, config) {
              console.log("Error> " + data);
          });
      };

      $scope.getSensoresVivienda = function () {
          $http.get(URL + '/api/default/get_sensores_vivienda').success(function (data, status, headers, config) {
              $scope.listaSensoresVivienda = data;
          }).error(function (data, status, headers, config) {
              console.log("Error> " + data);
          });
      };

      $scope.getSensoresParte = function (id) {
          $http.get(URL + '/api/default/get_sensores_parte/' + id).success(function (data, status, headers, config) {
              $scope.listaSensoresParte = data;
              if (data.length > 0) {
                  $scope.ParteVivienda = data[0].DescripcionPV;
                  $scope.result = "Sensores encontrados en: " + $scope.ParteVivienda;
              } else {
                  $scope.result = "No hay resultados";
              }
          }).error(function (data, status, headers, config) {
              console.log("Error> " + data);
          });
      };

      $scope.getDatosSensor = function (id) {
          $http.get(URL + '/api/default/get_datos_sensor/' + id).success(function (data, status, headers, config) {
              $scope.listaDatosSensor = data;
              if (data.length > 0) {
                  $scope.resultData = "Datos de: " + data[0].NombreSensor + " | " + data[0].Referencia;
              } else {
                  $scope.resultData = "No hay resultados";
              }
          }).error(function (data, status, headers, config) {
              console.log("Error> " + data);
          });
      };
  }
]);