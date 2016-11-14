function appConfig($routeProvider) {
    $routeProvider
        .when('/', { template: '<activities></activities>' })
        .when('/users', { template: '<users></users>' })
        .when('/timelogs', {template: '<timelogs></timelogs>'})
        .when('/info', {template: '<info></info>'})
        .otherwise({
            redirectTo: '/'
        })
}