/**
 * Created by Alex on 27/10/2016.
 */
/**
 * Created by Alex on 25/10/2016.
 */
function ActivitiesController(ActivityService) {
    var viewModel = this;

    viewModel.$onInit = $onInit;
    viewModel.refreshActivities = refreshActivities;
    viewModel.hasActivities = hasActivities;

    function $onInit() {
        viewModel.Activities = [];
        viewModel.refreshActivities();
    }

    function refreshActivities() {
        return ActivityService.list().then(function refreshedActivities(response) {
            viewModel.Activities = response.ActivityData;
        });
    }

    function hasActivities() {
        return viewModel.Activities.length > 0;
    }
}