/**
 * Created by putty on 11/15/16.
 */
function LoginFormController(loginService, $location) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.onSubmit = onUserSubmit;
    vm.onReset = onUserDidReset;
    vm.showError = showError;
    vm.showSuccess = showSuccess;

    function $onInit() {


        loginService.ClearCredentials();

    }

    function onUserSubmit(username, password) {

        var test = function (response)
        {
            if(response.status == 200)
            {
                loginService.SetCredentials(username, password);
                console.log(response.data.adminCheck)
                if (response.data.adminCheck === 1) { $location.path('/activity'); }
                else { $location.path('/info') }
            }
            else
            {
                vm.showError();
                vm.onReset();
            }

        }

        return loginService.signIn(username, password)
            .then(test)
            .catch(test);
    }

    function onUserDidReset() {
        vm.username = '';
        vm.password = '';


    }
    function showSuccess() {
        alert("Success");
    }


    function showError() {
        alert("Login Failed");

    }
}



/*var parentControllerHasSetData = angular.isDefined(vm.data);
 vm.username = parentControllerHasSetData ? vm.data.username : '';
 vm.password = parentControllerHasSetData ? vm.data.password : '';
 vm.run();
 }*/

/*    function login() {
 vm.dataLoading = true;
 loginService.Login(vm.username, vm.password, function (response) {
 if(response.success) {
 loginService.SetCredentials(vm.username, vm.password);
 $location.path('/');
 }
 else
 {
 FlashService.ERROR(response.message);
 vm.dataLoading = false;
 }

 })

 }*/









