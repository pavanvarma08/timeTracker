function appConfig($routeProvider, $httpProvider) {
    $routeProvider
        .when('/', {template: '<login-form></login-form>'})
        .when('/activity', { template: '<activities></activities>' ,resolve:{loggedIn:onlyLoggedIn}})
        .when('/users', { template: '<users></users>' ,resolve:{loggedIn:onlyLoggedIn}})
        .when('/overview', { template: '<overview-form></overview-form>' ,resolve:{loggedIn:onlyLoggedIn}})
        .when('/overviews', {template: '<overview-user></overview-user>',resolve:{loggedIn:onlyLoggedIn}})
        .when('/timelogs', {template: '<timelogs></timelogs>',resolve:{loggedIn:onlyLoggedIn}})
        .when('/info', {template: '<info></info>'})
        .otherwise({
            redirectTo: '/'
        });
    $httpProvider.interceptors.push('loginInterceptor');
}


var onlyLoggedIn = function ($location,$q,$cookies) {
 var deferred = $q.defer();
 var authdata = $cookies.get('authdata') || null;

 if (authdata!= null)
 {
 deferred.resolve();
 }
 else
 {
 deferred.reject();
 $location.url('/');
 }
 return deferred.promise;
 }

