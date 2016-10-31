function activityService($http, $interpolate) {
    var activity = $interpolate('/api/activity/{{activityID}}');

    return {
        list: list,
        create: create,
        destroy: destroy,
        update: update
    };

    function list() {
        return $http.get(activity());
    }

    function create(adminID, title, description) {
        var data = {
            adminID: adminID,
            title: title,
            description: description

        };

        return $http.post(activity(), data);
    }

    function destroy(activityID) {
        return $http.delete(activity({ activityID: activityID }));
    }

    function update(ActivityID, adminID, title, description) {
        var data = {

            adminID: adminID,
            title: title,
            description: description

        };

        return $http.put(activity({ activityID: activityID }), data);
    }
}