/**
 * Created by Alex on 24/10/2016.
 */
angular.module('TimeTrackerApp', ['ngRoute'])
    .factory('TimeTrackerService', TimeTrackerService)
    .component('TimeTrackerForm', {
        templateUrl: 'app/timeTracker-form/timeTracker-form.tpl',
        controller: TimeTrackerFormController,
        controllerAs: 'viewModel',

        require: {
            notesController: '^timeTracker'
        },

        bindings: {
            data: '<',
            onSubmit: '<',
            onReset: '<'
        }
    })
    .component('timeTracker', {
        templateUrl: 'app/activity/activity.tpl',
        controller: TimeTrackerController,
        controllerAs: 'viewModel',

        require: {
            notesController: '^timeTracker'
        },

        bindings: {
            data: '<'
        }
    })
    .component('timeTracker', {
        templateUrl: 'app/timeTracker/timeTracker.tpl',
        controller: TimeTrackerController,
        controllerAs: 'viewModel'
    })
    .component('navigation', { templateUrl: 'app/navigation/navigation.tpl' })
    .component('info', { templateUrl: 'app/info/info.tpl' })
    .config(appConfig);