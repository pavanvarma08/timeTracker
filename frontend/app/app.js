angular.module('app', ['ngRoute'])
    .factory('activityService', activityService)
    .factory('userService', userService)
    .factory('timelogService', timelogService)

   // ACTIVITY COMPONENTS
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
    .component('act',{
        templateUrl: 'app/activities/act.tpl',
        controller: ActivitiesController,
        controllerAs: 'vm',
    })

  // USER COMPONENTS
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

    //TIMELOG COMPONENTS
    .component('timelogForm', {
        templateUrl: 'app/timelog/timelog-form.tpl',
        controller: TimelogFormController,
        controllerAs: 'vm',

        require: {
            timelogsController: '^timelogs'
        },

        bindings: {
            data: '<',
            onSubmit: '<',
            onReset: '<'
        }
    })
    .component('timelogs',{
        templateUrl: 'app/timelog/timelogs.tpl',
        controller: TimelogsController,
        controllerAs: 'vm',
    })

    .component('navigation', { templateUrl: 'app/navigation/navigation.tpl' })
    .component('info', { templateUrl: 'app/navigation/info.tpl' })

    .config(appConfig);