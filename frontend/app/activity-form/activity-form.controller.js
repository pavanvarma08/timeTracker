function ActivityFormController(activityService) {
    var vm = this;

    vm.$onInit = $onInit;

    vm.sendActivity = vm.sendActivity || onUserDidSubmit;
    vm.onReset  = vm.onReset || onUserDidReset;
    vm.sendTimelog = vm.sendTimelog || onUserSendTimelog;

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

    function onUserSendTimelog(activityID, date, time)
    {
        return timelogService.create(activityID,date,time)
            .then(vm.TimelogController.refreshTimelog)
            .then;
    }

    function onUserDidReset() {
        vm.adminID = '';
        vm.title = '';
        vm.description  = '';


        vm.activityForm.$setPristine();
        vm.activityForm.$setUntouched();
    }

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }


}