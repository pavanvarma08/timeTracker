function ActivitiesController(activityService) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.refreshActivities = refreshActivities;
    vm.hasActivities = hasActivities;

    function $onInit() {
        vm.activities = [];
        vm.refreshActivities();
    }

    function refreshActivities() {
        return activityService.list().then(function refreshedActivities(response) {
            vm.activities = response.data;
        });
    }

    function hasActivities() {
        return vm.activities.length > 0;
    }
}