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
       // loginService.ClearCredentials();

        var parentControllerHasSetData = angular.isDefined(vm.data);
        vm.username = parentControllerHasSetData ? vm.data.username : '';
        vm.password = parentControllerHasSetData ? vm.data.password : '';

    }

    function onUserSubmit(username, password) {

        var test = function (response)
        {
            if(response.status == 200)
            {
                loginService.SetCredentials(username, password, response.data.userId,response.data.adminCheck);
              // console.log(response.data.userId);
               //console.log(response.data.adminCheck);
                if (response.data.adminCheck == "TRUE") { $location.path('/activity'); }
                else { $location.path('/timelogs') }
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






