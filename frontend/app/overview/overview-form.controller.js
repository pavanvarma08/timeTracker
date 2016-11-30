function OverviewFormController(timelogService, activityService, userService) {
    var vm = this;
    vm.$onInit = $onInit;

    vm.viewAdmin = vm.viewAdmin || onAdminDidSubmit;
    vm.onReset  = vm.onReset || onAdminDidReset;
<<<<<<< HEAD
    vm.refreshTimelog = refreshTimelog;
=======
    //vm.refreshTimelog = refreshTimelog;
>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8

    vm.refreshActivities = refreshActivities;
   vm.refreshUsers = refreshUsers;
    vm.showError = showError;

    function $onInit() {
        vm.refreshActivities();
<<<<<<< HEAD
       vm.refreshTimelog();
=======
      //  vm.refreshTimelog();
>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8
       vm.refreshUsers();
       vm.overview=[];
    }

    function onAdminDidSubmit(userId) {
        return timelogService.find(userId)
            .then(function searchedtimelogs(response) {
                    vm.overview= response.data;
                });
    }

<<<<<<< HEAD
    function refreshTimelog() {
        return timelogService.list().then(function refreshedTimelog(response) {
            vm.timelogs = response.data;
        });
    }

=======
    /*function refreshTimelog() {
        return timelogService.list().then(function refreshedTimelog(response) {
            vm.timelogs = response.data;
        });
    }*/
>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8
    function refreshActivities() {
        return activityService.list().then(function refreshedActivities(response) {
            vm.activities = response.data;
        });
    }

    function refreshUsers() {
        return userService.list().then(function refreshedUsers(response) {
            vm.users = response.data;
        });
    }

    function onAdminDidReset() {
        vm.date = '';
        vm.time = '';
        vm.activityID  = '';
        vm.overviewAdmin.$setPristine();
        vm.overviewAdmin.$setUntouched();
    }

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }
}