/**
 * Created by Mini on 16/11/07.
 */
function UsersController(userService) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.refreshUsers = refreshUsers;
    vm.hasUsers = hasUsers;

    function $onInit() {
        vm.users = [];
        vm.refreshUsers();
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