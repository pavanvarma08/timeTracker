function logService($http, $interpolate) {

    var log = $interpolate('/api/done');
    var done = $interpolate('/api/done/{{username}}');
    return {
        list: list,
        create: create,
        view: view
    };


    function list() {
        return $http.get(log());
    }

    function view(username){
        return $http.get(done({username: username}))
    }

    function create( date, title, username) {
        var data = {

            date: date,
            title: title,
            username: username
        };

        return $http.post(log(), data);
    }
/*
    function destroy(logID) {
        return $http.delete(log({ logID: logID }));
    }

    function update(logID, date, totaltime, title, username) {
        var data = {
            date: date,
            totaltime: totaltime,
            title: title,
            username: username

        };

        return $http.put(log({ logID: logID }), data);
    }
    */
}

