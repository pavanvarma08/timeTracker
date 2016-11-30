function TimelogFormController(timelogService,activityService) {
    var vm = this;

    vm.$onInit = $onInit;

    vm.sendTimeLog = vm.sendTimeLog || onUserDidSubmitTimeLog;
    vm.onReset  = vm.onReset || onUserDidResetTimeLog;
    vm.refreshActivities = refreshActivities;
    vm.showError = showError;

    function $onInit() {
        vm.refreshActivities();
        var parentControllerHasSetData = angular.isDefined(vm.data);
        vm.date = parentControllerHasSetData ? vm.data.date : '';
        vm.time = parentControllerHasSetData ? vm.data.time : '';
        vm.activityID  = parentControllerHasSetData ? vm.data.activityID  : '';
    }

    function onUserDidSubmitTimeLog(date, time, activityID) {

        return timelogService.create(date, time, activityID)
                .then(vm.timelogsController.refreshTimelog())
                .then(onUserDidResetTimeLog)
                .catch(vm.showError);
    }

    function refreshActivities() {
        return activityService.list().then(function refreshedActivities(response) {
            vm.activities = response.data;
        });
    }
    function onUserDidResetTimeLog() {
        vm.date = '';
        vm.time = '';
        vm.activityID  = '';
        vm.timelogForm.$setPristine();
        vm.timelogForm.$setUntouched();
    }

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }
}