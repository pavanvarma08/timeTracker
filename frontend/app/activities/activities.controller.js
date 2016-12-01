function ActivitiesController(activityService, userService, $cookies) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.refreshActivities = refreshActivities;
    vm.hasActivities = hasActivities;
    vm.myFunction = myFunction;
   // vm.hasCookies = hasCookies;
    function $onInit() {
        vm.activities = [];
        vm.u_id =[];
        vm.refreshActivities();
       vm.myFunction();
    }

  /*  function hasCookies() {
        var authdata = $cookies.get('authdata') || null;
        vm.user = $cookies.get('userId');
        vm.names = $cookies.get('username');
        //console.log(role);
        if (authdata!= null){
            vm.products= [1];
        }

    }
*/
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
            vm.hello = $cookies.getAll();

        });
    }
    function refreshUsers() {
        return userService.list().then(function refreshedUsers(response) {
            vm.users = response.data;
        });
    }

    function hasActivities() {
        return vm.activities.length > 0;
    }

}