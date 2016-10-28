function activityService($http, $interpolate) {
    var activity = $interpolate('/api/activity/{{ActivityID}}');

    return {
        list: list,
        create: create,
        destroy: destroy,
        update: update
    };

    function list() {
        return $http.get(activity());
    }

    function create(ActivityID, AdminID, UserID, ActivityName, ActivityDescription,DateCreated, TimeLoggedIn, TimeLoggedOut) {
        var data = {
            ActivityID: ActivityID,
            AdminID: AdminID,
            UserID: UserID,
            ActivityName: ActivityName,
            ActivityDescription: ActivityDescription,
            DateCreated: DateCreated,
            TimeLoggedIn: TimeLoggedIn,
            TimeLoggedOut: TimeLoggedOut
        };

        return $http.post(activity(), data);
    }

    function destroy(ActivityID) {
        return $http.delete(activity({ ActivityID: ActivityID }));
    }

    function update(ActivityID, AdminID, UserID, ActivityName, ActivityDescription,DateCreated, TimeLoggedIn, TimeLoggedOut) {
        var data = {
            ActivityID: ActivityID,
            AdminID: AdminID,
            UserID: UserID,
            ActivityName: ActivityName,
            ActivityDescription: ActivityDescription,
            DateCreated: DateCreated,
            TimeLoggedIn: TimeLoggedIn,
            TimeLoggedOut: TimeLoggedOut
        };

        return $http.put(activity({ ActivityID: ActivityID }), data);
    }
}