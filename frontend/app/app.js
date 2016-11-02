angular.module('app', ['ngRoute'])
    .factory('activityService', activityService)
    .component('activityForm', {
        templateUrl: 'app/activity-form/activity-form.tpl',
        controller: ActivityFormController,
        controllerAs: 'vm',

        require: {
            activitiesController: '^activities'
        },

        bindings: {
            data: '<',
            onSubmit: '<',
            onReset: '<'
        }
    })

    .component('activity', {
        templateUrl: 'app/activity/activity.tpl',
        controller: ActivityController,
        controllerAs: 'vm',

        require: {
            activitiesController: '^activities'
        },

        bindings: {
            data: '<'
        }
    })

    .component('activities', {
        templateUrl: 'app/activities/activities.tpl',
        controller: ActivitiesController,
        controllerAs: 'vm'
    })
    .component('navigation', { templateUrl: 'app/navigation/navigation.tpl' })
    .component('info', { templateUrl: 'app/info/info.tpl' })

    .config(appConfig);