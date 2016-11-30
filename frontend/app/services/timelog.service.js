function timelogService($http, $interpolate) {
<<<<<<< HEAD
    var timelog = $interpolate('/api/timelog');
    var overview = $interpolate('/api/timelog/{{userId}}');
=======
    var timelog = $interpolate('/api/timelog/{{userId}}');
>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8

    return {
        list: list,
        create: create,
        destroy: destroy,
        find: find,
        update: update
    };

    function list() {
        return $http.get( timelog());
    }

    function find( userId) {
<<<<<<< HEAD
        return $http.get(overview({userId: userId}));
=======
        return $http.get(timelog({userId: userId }));
>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8

    }

    function create(date, time, activityID) {
        var data = {
            date: date,
            time: time,
            activityID: activityID
        };

        return $http.post(timelog(), data);
    }

    function destroy(timeID) {
        return $http.delete(timelog({ timeID: timeID }));
    }

    function update(timeID, date, time, activityID) {
        var data = {
            date: date,
            time: time,
            activityID: activityID

        };

        return $http.put(timelog({ timeID: timeID }), data);
    }
}

