/**
 * Created by Mini on 16/11/07.
 */
function UserController(userService) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.editUser = editUser;
    vm.removeUser = removeUser;
    vm.submitEditedUser = submitEditedUser;
    vm.resetEditedUser = resetEditedUser;
    vm.showError = showError;

    function $onInit() {
        // vm.usersController will be our parent controller (usersController)
        // vm.data will contain the data of this activity
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

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }
}