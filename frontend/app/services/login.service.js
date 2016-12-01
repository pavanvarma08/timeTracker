/**
 * Created by putty on 11/15/16.
 */

function loginService($http, $interpolate, $cookies) {

    var login = $interpolate('/api/login');


    return {

        signIn: signIn,
        ClearCredentials: ClearCredentials,
        SetCredentials: SetCredentials
    };


    function signIn(username, password) {

        var data = {
            username: username,
            password: password
        };
        return $http.post(login(), data);
    }

    function ClearCredentials() {
        $http.defaults.headers.common.Authorization = 'Basic';
        $cookies.remove('authdata');
        $cookies.remove('userid');
        $cookies.remove('username');
        $cookies.remove('adminCheck');
        //$rootScope.globals = {};
        //  $cookieStore.remove('globals');
        //$http.defaults.headers.common.Authorization = 'Basic';

    }

    function SetCredentials(username, password, userId, adminCheck) {

        var authdata = Base64.encode(username + ':' + password);
        $http.defaults.headers.common['Authorization'] = 'Basic' + authdata;
        console.log($http.defaults.headers.common.Authorization);

        $cookies.put('authdata', authdata);
        $cookies.put('userid', userId);
        $cookies.put('username', username);
        $cookies.put('adminCheck', adminCheck);

    }


}

var Base64 = {
    /* jshint ignore:start */

    keyStr: 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=',

    encode: function (input) {
        var output = "";
        var chr1, chr2, chr3 = "";
        var enc1, enc2, enc3, enc4 = "";
        var i = 0;

        do {
            chr1 = input.charCodeAt(i++);
            chr2 = input.charCodeAt(i++);
            chr3 = input.charCodeAt(i++);

            enc1 = chr1 >> 2;
            enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
            enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
            enc4 = chr3 & 63;

            if (isNaN(chr2)) {
                enc3 = enc4 = 64;
            } else if (isNaN(chr3)) {
                enc4 = 64;
            }

            output = output +
                this.keyStr.charAt(enc1) +
                this.keyStr.charAt(enc2) +
                this.keyStr.charAt(enc3) +
                this.keyStr.charAt(enc4);
            chr1 = chr2 = chr3 = "";
            enc1 = enc2 = enc3 = enc4 = "";
        } while (i < input.length);

        return output;
    }
}

