/**
 * Created by Alex on 24/10/2016.
 */
function appConfig($routeProvider) {
    $routeProvider
        .when('/', { template: '<timeTracker></timeTracker>' })
        .when('/info', { template: '<info></info>' })
        .otherwise({
            redirectTo: '/'
        })
}