function TimelogFormController(timelogService) {
    var vm = this;

    vm.$onInit = $onInit;

    vm.sendTimeLog = vm.sendTimeLog || onUserDidSubmitTimeLog;
    vm.onReset  = vm.onReset || onUserDidResetTimeLog;

    vm.showError = showError;

    function $onInit() {
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