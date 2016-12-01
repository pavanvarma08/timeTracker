/**
 * Created by PAVAN VARMA on 01-Dec-16.
 */
function NavigationController($cookies, loginService, $location) {
    var vm = this;

    vm.$onInit = $onInit;
    vm.hasCookies = hasCookies;
    vm.logout = logout;

    function $onInit() {
        vm.activities= [];
        vm.role=[];
    }

    function hasCookies() {
        var authdata = $cookies.get('authdata') || null;
        vm.adminCheck = $cookies.get('adminCheck');
        //console.log(role);

        if (authdata!= null){
            vm.activities= [1];
        }
        return vm.activities.length > 0;
    }

    function logout() {
        loginService.ClearCredentials();

        $location.path('/');
    }
}