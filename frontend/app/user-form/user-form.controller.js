/**
 * Created by Mini on 16/11/07.
 */
function UserFormController(userService) {
    var vm = this;

    vm.$onInit = $onInit;

    vm.sendUser = vm.sendUser || onUserDidSubmit;
    vm.onReset  = vm.onReset || onUserDidReset;
    //vm.sendTimelog = vm.sendTimelog || onUserSendTimelog;

    vm.showError = showError;

    function $onInit() {
        var parentControllerHasSetData = angular.isDefined(vm.data);
        vm.username = parentControllerHasSetData ? vm.data.username : '';
        vm.password  = parentControllerHasSetData ? vm.data.password  : '';
        vm.firstname  = parentControllerHasSetData ? vm.data.firstname  : '';
        vm.lastname  = parentControllerHasSetData ? vm.data.lastname  : '';
        vm.adminCheck  = parentControllerHasSetData ? vm.data.adminCheck : '';
    }

    function onUserDidSubmit(username, password, firstname, lastname, adminCheck) {
        return userService.create(username, password, firstname, lastname, adminCheck)
            .then(vm.usersController.refreshUsers)
            .then(onUserDidReset)
            .catch(vm.showError);
    }

    function onUserDidReset() {
        vm.username = '';
        vm.password = '';
        vm.firstname  = '';
        vm.lastname = '';
        vm.adminCheck = '';

        vm.userForm.$setPristine();
        vm.userForm.$setUntouched();
    }

    function showError(response) {
        alert(response.data.errors.join("\n"));
    }


}