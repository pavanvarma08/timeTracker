/**
 * Created by PAVAN VARMA on 09-Nov-16.
 */
function TimelogsController(timelogService,activityService,userService) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.refreshTimelog = refreshTimelog;
    vm.hasTimelog = hasTimelog;
    vm.refreshActivities = refreshActivities;
  //  vm.refreshUsers = refreshUsers;
  //  vm.hasActivities = hasActivities;

    function refreshActivities() {
        return activityService.list().then(function refreshedActivities(response) {
            vm.activities = response.data;
        });
    }
 /*   function refreshUsers() {
        return userService.list().then(function refreshedUsers(response) {
            vm.users = response.data;
        });
    }
*/
    function $onInit() {
        vm.timelogs = [];
        vm.refreshTimelog();
        vm.refreshActivities();
//        vm.refreshUsers();
    }

    function refreshTimelog() {
        return timelogService.list().then(function refreshedTimelog(response) {
            vm.timelogs = response.data;
        });
    }
    function hasTimelog() {
        return vm.timelogs.length > 0;
    }
}