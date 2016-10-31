function ActivityFormController(activityService) {
    var vm = this;

    vm.$onInit = $onInit;

    vm.onSubmit = vm.onSubmit || onUserDidSubmit;
    vm.onReset  = vm.onReset || onUserDidReset;

    vm.showError = showError;

    function $onInit() {
        var parentControllerHasSetData = angular.isDefined(vm.data);
        vm.adminID = parentControllerHasSetData ? vm.data.adminID : '';

        vm.title = parentControllerHasSetData ? vm.data.title : '';
        vm.description  = parentControllerHasSetData ? vm.data.description  : '';


    }

    function onUserDidSubmit(adminID, title, description) {
        return activityService.create(adminID, title, description)
            .then(vm.activitiesController.refreshActivities)
            .then(onUserDidReset)
            .catch(vm.showError);
    }

    function onUserDidReset() {
        vm.adminID = '';
        vm.ActivityName = '';
        vm.ActivityDescription  = '';


        vm.activityForm.$setPristine();
        vm.activityForm.$setUntouched();
    }

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }
}