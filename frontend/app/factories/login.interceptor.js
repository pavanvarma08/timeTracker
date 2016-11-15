/**
 * Created by putty on 11/15/16.
 */
function loginInterceptor() {

    console.log("test")
    return {

        request: function (config) {

            console.log(config);
            return config;

        },

        requestError: function (config) {

            console.log(config);
            return config;
        },

        response: function (res) {

            console.log(res);
            return res;

        },

        responseError: function (res) {

            console.log(res);
            return res;

        }

    }

}