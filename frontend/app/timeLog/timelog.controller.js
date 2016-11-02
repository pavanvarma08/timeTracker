function TimelogController(timelogService) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.refreshTimelog = refreshTimelog;
    vm.hasTimelog = hasTimelog;

    function $onInit() {
        vm.timelog = [];
        vm.refreshTimelog();
    }

    function refreshTimelog() {
        return timelogService.list().then(function refreshedTimelog(response) {
            vm.timelog = response.data;
        });
    }
 //   function submitTimelog(date, time, adminID) {
  //      return timelogService.update(vm.data.timeID, date, time, adminID)
   //         .then(vm.timelogController.refreshTimelog)
    //        .catch(vm.showError);
  //  }
    function hasTimelog() {
        return vm.timelog.length > 0;
    }
}