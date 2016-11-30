function timelogService($http, $interpolate) {
    var timelog = $interpolate('/api/timelog');
    var overview = $interpolate('/api/timelog/{{userId}}');

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
        return $http.get(overview({userId: userId}));

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

