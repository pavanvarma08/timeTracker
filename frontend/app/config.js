function appConfig($routeProvider) {
    $routeProvider
        .when('/', { template: '<activities></activities>' })
        .when('/info', { template: '<info></info>' })
        .when('/login', {template: '<login></login>'})
        .otherwise({
            redirectTo: '/'
        })
}