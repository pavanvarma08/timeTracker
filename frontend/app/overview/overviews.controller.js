function OverviewsController(timelogService)
{
    var vm = this;

    vm.$onInit = $onInit;
    vm.hasTimelog = hasTimelog;
    vm.refreshOverview = refreshOverview;

    function $onInit()
    {
        vm.overview= [];
        vm.refreshOverview();
    }

    function refreshOverview(){

        return timelogService.find(userId).then(function refreshedOverview(response) {
            vm.overviews= response.data;
        });
    }

   /* function refreshTimelog() {
        return timelogService.list().then(function refreshedTimelog(response) {
            vm.timelogs = response.data;
        });
    }*/

    function hasTimelog() {
        return vm.overview.length > 0;
    }

}


