function TimelogFormController(timelogService) {
    var vm = this;

    vm.$onInit = $onInit;

    vm.onSubmit = vm.onSubmit || onUserDidSubmit;
    vm.onReset  = vm.onReset || onUserDidReset;

    vm.showError = showError;

    function $onInit() {
        var parentControllerHasSetData = angular.isDefined(vm.data);
        vm.date = parentControllerHasSetData ? vm.data.date : '';

        vm.time = parentControllerHasSetData ? vm.data.time : '';
        vm.activityID  = parentControllerHasSetData ? vm.data.activityID  : '';


    }

    function onUserDidSubmit(date, time, activityID) {
        return timelogService.create(date, time, activityID)
                .then(vm.timelogController.refreshTimelog())
                .then(onUserDidReset)
                .catch(vm.showError);
    }

    function onUserDidReset() {
        vm.date = '';
        vm.time = '';
        vm.activityID  = '';


        vm.activityForm.$setPristine();
        vm.activityForm.$setUntouched();
    }

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }
}