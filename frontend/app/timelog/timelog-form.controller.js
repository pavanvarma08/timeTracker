function TimelogFormController(timelogService,activityService, $cookies, logService) {
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
        vm.title  = parentControllerHasSetData ? vm.data.title  : '';
    }

    function onUserDidSubmitTimeLog(date, time, title , check) {

        var ids = $cookies.get('username');
        if (check == true) {
            return timelogService.create(date, time, title, ids)
                .then(logService.create(date, title, ids))
                .then(vm.timelogsController.refreshTimelog())
                .then(onUserDidResetTimeLog)
                .catch(vm.showError);
        }
        else {

        return timelogService.create(date, time, title, ids)
            .then(vm.timelogsController.refreshTimelog())
            .then(onUserDidResetTimeLog)
            .catch(vm.showError);
           }
    }

    function refreshActivities() {
        return activityService.list().then(function refreshedActivities(response) {
            vm.activities = response.data;
            vm.id =$cookies.getAll();
        });
    }
    function onUserDidResetTimeLog() {
        vm.date = '';
        vm.time = '';
        vm.title  = '';
        vm.timelogForm.$setPristine();
        vm.timelogForm.$setUntouched();
    }

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }
}