function ActivityFormController(activityService) {
    var vm = this;

    vm.$onInit = $onInit;

    vm.onSubmit = vm.onSubmit || onUserDidSubmit;
    vm.onReset  = vm.onReset || onUserDidReset;

    vm.showError = showError;

    function $onInit() {
        var parentControllerHasSetData = angular.isDefined(vm.data);
        vm.AdminID = parentControllerHasSetData ? vm.data.AdminID : '';
        vm.UserID  = parentControllerHasSetData ? vm.data.UserID  : '';
        vm.ActivityName = parentControllerHasSetData ? vm.data.ActivityName : '';
        vm.ActivityDescription  = parentControllerHasSetData ? vm.data.ActivityDescription  : '';
        vm.DateCreated = parentControllerHasSetData ? vm.data.DateCreated : '';
        vm.TimeLoggedIn  = parentControllerHasSetData ? vm.data.TimeLoggedIn  : '';
        vm.TimeLoggedOut  = parentControllerHasSetData ? vm.data.TimeLoggedOut  : '';

    }

    function onUserDidSubmit(AdminID, UserID, ActivityName, ActivityDescription,DateCreated, TimeLoggedIn, TimeLoggedOut) {
        return activityService.create(AdminID, UserID, ActivityName, ActivityDescription,DateCreated, TimeLoggedIn, TimeLoggedOut)
            .then(vm.activitiesController.refreshActivities)
            .then(onUserDidReset)
            .catch(vm.showError);
    }

    function onUserDidReset() {
        vm.AdminID = '';
        vm.UserID  = '';
        vm.ActivityName = '';
        vm.ActivityDescription  = '';
        vm.DateCreated = '';
        vm.TimeLoggedIn  = '';
        vm.TimeLoggedOut  =  '';

        vm.activityForm.$setPristine();
        vm.activityForm.$setUntouched();
    }

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }
}