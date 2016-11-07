function appConfig($routeProvider) {
    $routeProvider
        .when('/', { template: '<activities></activities>' })
        .when('/info', { template: '<info></info>' })
        .when('/timelog', {template: '<timelog></timelog>'})
        .otherwise({
            redirectTo: '/'
        })
}