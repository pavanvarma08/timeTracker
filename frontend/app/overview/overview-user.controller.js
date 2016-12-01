/**
 * Created by PAVAN VARMA on 01-Dec-16.
 */
function OverviewUserController(timelogService, activityService, userService, logService) {
    var vm = this;
    vm.$onInit = $onInit;

    vm.viewUser = vm.viewUser || onUserDidSubmit;
    vm.onReset  = vm.onReset || onUserDidReset;

   vm.refreshTimelog = refreshTimelog;
    vm.refreshActivities = refreshActivities;
    vm.refreshlog = refreshlog;
    vm.showError = showError;
    vm.myFunction = myFunction;

    function $onInit() {
        vm.refreshActivities();
        vm.refreshTimelog();
        vm.refreshlog();
        vm.myFunction();
        vm.overview=[];
    }

    function myFunction() {
        // Declare variables
        var input, filter, table, tr, td, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");

        // Loop through all table rows, and hide those who don't match the search query
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }

    function onUserDidSubmit() {
        return timelogService.list()
            .then(function searchedtimelogs(response) {
                vm.overview= response.data;
            });
    }

    function refreshTimelog() {
        return timelogService.list().then(function refreshedTimelog(response) {
            vm.timelogs = response.data;
        });
    }

    function refreshActivities() {
        return activityService.list().then(function refreshedActivities(response) {
            vm.activities = response.data;
        });
    }

    function refreshlog() {
        return logService.list().then(function refreshedUsers(response) {
            vm.logs = response.data;
        });
    }

    function onUserDidReset() {
        vm.title  = '';
        vm.overviewUser.$setPristine();
        vm.overviewUser.$setUntouched();
    }

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }
}