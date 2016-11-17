function ActivitiesController(activityService) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.refreshActivities = refreshActivities;
    vm.hasActivities = hasActivities;
    vm.myFunction = myFunction;

    function $onInit() {
        vm.activities = [];
        vm.refreshActivities();
       vm.myFunction();
    }

    //Search panel JS
    function myFunction()
    {
        // Declare variables
        var input, filter, table, tr, td, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");

        // Loop through all table rows, and hide those who don't match the search query
        for (i = 0; i < tr.length; i++)
        {
            td = tr[i].getElementsByTagName("td")[0];
            if (td)
            {   if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {tr[i].style.display = "";}
                else { tr[i].style.display = "none";}
            }
        }
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