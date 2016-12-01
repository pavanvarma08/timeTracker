/**
 * Created by PAVAN VARMA on 01-Dec-16.
 */
function OverviewUserController(timelogService, activityService, userService, logService) {
    var vm = this;
    vm.$onInit = $onInit;

    vm.viewUser = vm.viewUser || onUserDidSubmit;
    vm.onReset  = vm.onReset || onUserDidReset;

   vm.refreshTimelog = refreshTimelog;
    vm.refreshActivities = refreshActivities;
    vm.refreshlog = refreshlog;
    vm.showError = showError;

    function $onInit() {
        vm.refreshActivities();
        vm.refreshTimelog();
        vm.refreshlog();
        vm.overview=[];
    }

    function onUserDidSubmit() {
        return timelogService.list()
            .then(function searchedtimelogs(response) {
                vm.overview= response.data;
            });
    }

    function refreshTimelog() {
        return timelogService.list().then(function refreshedTimelog(response) {
            vm.timelogs = response.data;
        });
    }

    function refreshActivities() {
        return activityService.list().then(function refreshedActivities(response) {
            vm.activities = response.data;
        });
    }

    function refreshlog() {
        return logService.list().then(function refreshedUsers(response) {
            vm.logs = response.data;
        });
    }

    function onUserDidReset() {
        vm.title  = '';
        vm.overviewUser.$setPristine();
        vm.overviewUser.$setUntouched();
    }

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }
}