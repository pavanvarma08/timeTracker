function loginService($http, $interpolate) {

    return {
        login: login
    };



    function login() {
        var data = {
            username: username,
            password: password
        };

    }
}