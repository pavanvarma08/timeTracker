/**
 * Created by Mini on 16/11/07.
 */
function UsersController(userService) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.refreshUsers = refreshUsers;
    vm.hasUsers = hasUsers;
   vm.myFunction = myFunction;

    // extra
    vm.editUser = editUser;
    vm.removeUser = removeUser;
    vm.submitEditedUser = submitEditedUser;
    vm.resetEditedUser = resetEditedUser;

    function $onInit() {
        vm.users = [];
        vm.refreshUsers();
        vm.myFunction();
        vm.resetEditedUser();
    }
    function editUser(){
        vm.isEditingUser = true;
    }
    function removeUser() {
        userService.destroy(vm.data.userId)
            .then(vm.usersController.refreshUsers());
    }

    function submitEditedUser(username, password, firstname, lastname, adminCheck) {
        return userService.update(vm.data.userId, username, password, firstname, lastname, adminCheck)
            .then(vm.usersController.refreshUsers)
            .then(vm.resetEditedUser)
            .catch(vm.showError);
    }

    function resetEditedUser() {
        vm.isEditingUser = false;
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

    function refreshUsers() {
        return userService.list().then(function refreshedUsers(response) {
            vm.users = response.data;
        });
    }

    function hasUsers() {
        return vm.users.length > 0;
    }

}