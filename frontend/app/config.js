function appConfig($routeProvider) {
    $routeProvider
        .when('/', { template: '<activities></activities>' })
        .when('/info', { template: '<info></info>' })
<<<<<<< HEAD
        .when('/login', {template: '<login></login>'})
=======
        .when('/timelog', {template: '<timelog></timelog>'})
>>>>>>> 088c76e7bf17af95ed4cc2b2f615af583b6915f9
        .otherwise({
            redirectTo: '/'
        })
}