function appConfig($routeProvider) {
    $routeProvider
        .when('/', { template: '<activities></activities>' })
        .when('/users', { template: '<users></users>' })
        .when('/timelogs', {template: '<timelogs></timelogs>'})
        .otherwise({
            redirectTo: '/'
        })
}