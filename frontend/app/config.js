function appConfig($routeProvider, $httpProvider) {
    $routeProvider
        .when('/', {template: '<login-form></login-form>'})
        .when('/activity', { template: '<activities></activities>' })
        .when('/users', { template: '<users></users>' })
        .when('/overview', { template: '<overview-form></overview-form>'})
        .when('/overviews', {template: '<overviews></overviews>'})
        .when('/timelogs', {template: '<timelogs></timelogs>'})
        .when('/info', {template: '<info></info>'})
        .otherwise({
            redirectTo: '/'
        });
    $httpProvider.interceptors.push('loginInterceptor');
}


/*var onlyLoggedIn = function ($location,$q,$cookies) {
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

 */