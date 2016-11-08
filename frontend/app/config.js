function appConfig($routeProvider) {
    $routeProvider
        .when('/', { template: '<activities></activities>' })
        .when('/users', { template: '<users></users>' })
        .when('/timelog', {template: '<timelog></timelog>'})
        .otherwise({
            redirectTo: '/'
        })
}