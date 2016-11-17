/**
 * Created by Mini on 16/11/07.
 */
function userService($http, $interpolate) {
    var user = $interpolate('/api/login/user/{{userId}}');

    return {
        list: list,
        create: create,
        destroy: destroy,
        update: update
    };

    function list() {
        return $http.get(user());
    }

    function create(username, password, firstname, lastname, adminCheck) {
        var data = {
            username: username,
            password: password,
            firstname: firstname,
            lastname: lastname,
            adminCheck: adminCheck
        };
        return $http.post(user(), data);
    }

    function destroy(userId) {
        return $http.delete(user({ userId: userId }));
    }

    function update(userId, username, password, firstname, lastname, adminCheck) {
        var data = {
            username: username,
            password: password,
            firstname: firstname,
            lastname: lastname,
            adminCheck: adminCheck

        };

        return $http.put(user({ userId: userId }), data);
    }
}