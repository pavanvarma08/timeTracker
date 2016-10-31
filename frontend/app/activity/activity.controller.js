function ActivityController(activityService) {
    var vm = this;

    vm.$onInit = $onInit;

    vm.editActivity = editActivity;
    vm.removeActivity = removeActivity;
    vm.submitEditedActivity = submitEditedActivity;
    vm.resetEditedActivity = resetEditedActivity;
    vm.showError = showError;

    function $onInit() {
        // vm.activitiesController will be our parent controller (activitiesController)
        // vm.data will contain the data of this activity
        vm.resetEditedActivity();
    }

    function editActivity() {
        vm.isEditingActivity = true;
    }

    function removeActivity() {
        activityService.destroy(vm.data.ActivityID)
            .then(vm.activitiesController.refreshActivities);
    }

    function submitEditedActivity(adminID, title, description) {
        return activityService.update(vm.data.ActivityID, adminID, title, description)
            .then(vm.activitiesController.refreshActivities)
            .then(vm.resetEditedActivity)
            .catch(vm.showError);
    }

    function resetEditedActivity() {
        vm.isEditingActivity = false;
    }

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }
}