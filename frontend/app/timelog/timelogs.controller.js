/**
 * Created by PAVAN VARMA on 09-Nov-16.
 */
function TimelogsController(timelogService,activityService,userService) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.refreshTimelog = refreshTimelog;
    vm.hasTimelog = hasTimelog;
    vm.refreshActivities = refreshActivities;
    vm.myFunction = myFunction;
  //  vm.refreshUsers = refreshUsers;
  //  vm.hasActivities = hasActivities;

    function refreshActivities() {
        return activityService.list().then(function refreshedActivities(response) {
            vm.activities = response.data;
        });
    }
 /*   function refreshUsers() {
        return userService.list().then(function refreshedUsers(response) {
            vm.users = response.data;
        });
    }
*/
    function $onInit() {
        vm.timelogs = [];
        vm.refreshTimelog();
        vm.refreshActivities();
        vm.myFunction();
//        vm.refreshUsers();
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
    function refreshTimelog() {
        return timelogService.list().then(function refreshedTimelog(response) {
            vm.timelogs = response.data;
        });
    }
    function hasTimelog() {
        return vm.timelogs.length > 0;
    }
}