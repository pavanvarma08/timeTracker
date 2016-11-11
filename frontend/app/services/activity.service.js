function activityService($http, $interpolate) {
    var activity = $interpolate('/api/activity/{{activityID}}');

    return {
        list: list,
        create: create,
        destroy: destroy,
        update: update,
        fetch: fetch
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

    function fetch(title)
    {
        return $http.get(activity({title: title}));
    }

    function destroy(activityID) {
        return $http.delete(activity({ activityID: activityID }));
    }

    function update(activityID, adminID, title, description) {
        var data = {

            adminID: adminID,
            title: title,
            description: description

        };

        return $http.put(activity({ activityID: activityID }), data);
    }
}