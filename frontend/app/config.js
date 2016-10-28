function appConfig($routeProvider) {
    $routeProvider
        .when('/', { template: '<activities></activities>' })
        .when('/info', { template: '<info></info>' })
        .otherwise({
            redirectTo: '/'
        })
}