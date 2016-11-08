angular.module('app', ['ngRoute'])
    .factory('activityService', activityService)
    .factory('userService', userService)
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

    .component('activities',{
        templateUrl: 'app/activities/activities.tpl',
        controller: ActivitiesController,
        controllerAs: 'vm',
    })

    .component('timelog', {
        templateUrl: 'app/info/timelog.tpl',
        controller: ActivityController,
        controllerAs: 'vm',

        require: {
            activitiesController: '^activities'
        },

        bindings: {
            data: '<'
        }
    })
    .component('userForm', {
        templateUrl: 'app/user-form/user-form.tpl',
        controller: UserFormController,
        controllerAs: 'vm',

        require: {
            usersController: '^users'
        },

        bindings: {
            data: '<',
            onSubmit: '<',
            onReset: '<'
        }
    })

    .component('user', {
        templateUrl: 'app/user/user.tpl',
        controller: UserController,
        controllerAs: 'vm',

        require: {
            usersController: '^users'
        },

        bindings: {
            data: '<'
        }
    })

    .component('users',{
        templateUrl: 'app/users/users.tpl',
        controller: UsersController,
        controllerAs: 'vm',
    })

    .component('navigation', { templateUrl: 'app/navigation/navigation.tpl' })
    .component('info', { templateUrl: 'app/info/info.tpl' })

    .config(appConfig);