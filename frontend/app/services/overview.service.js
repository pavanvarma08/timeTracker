function overviewService($http, $interpolate) {
    var timelog = $interpolate('/api/timelog/{{userId}}/{{activityID}}');

    return {
        find: find
    };

    function find(userId, activityID) {
        return $http.get(timelog({userId: userId, activityID: activityID}));
    }
}