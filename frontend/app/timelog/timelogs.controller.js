/**
 * Created by PAVAN VARMA on 09-Nov-16.
 */
function TimelogsController(timelogService) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.refreshTimelog = refreshTimelog;
    vm.hasTimelog = hasTimelog;

    function $onInit() {
        vm.timelogs = [];
        vm.refreshTimelog();
    }

    function refreshTimelog() {
        return timelogService.list().then(function refreshedTimelog(response) {
            vm.timelogs = response.data;
        });
    }
    function hasTimelog() {
        return vm.timelogs.length > 0;
    }
}