/**
 * Created by Alex on 24/10/2016.
 */
function noteService($http, $interpolate) {
    var note = $interpolate('/api/Activity/{{id}}');

    return {
        list: list,
        create: create,
        destroy: destroy,
        update: update
    };

    function list() {
        return $http.get(Activity());
    }

    function create(ActivityID, AdminID, UserID, ActivityName, ActivityDescription,DateCreated, TimeLoggedIn, TimeLoggedOut) {
        var ActivityData = {
            ActivityID: ActivityID,
            AdminID: AdminID,
            UserID: UserID,
            ActivityName: ActivityName,
            ActivityDescription: ActivityDescription,
            DateCreated: DateCreated,
            TimeLoggedIn: TimeLoggedIn,
            TimeLoggedOut: TimeLoggedOut

        };

        return $http.post(Activity(), ActivityData);
    }

    function destroy(ActivityID) {
        return $http.delete(Activity({ ActivityID: ActivityID }));
    }

    function update(ActivityID, AdminID, UserID, ActivityName, ActivityDescription,DateCreated, TimeLoggedIn, TimeLoggedOut) {
        var ActivityData = {
            ActivityID: ActivityID,
            AdminID: AdminID,
            UserID: UserID,
            ActivityName: ActivityName,
            ActivityDescription: ActivityDescription,
            DateCreated: DateCreated,
            TimeLoggedIn: TimeLoggedIn,
            TimeLoggedOut: TimeLoggedOut
        };

        return $http.put(Activity({ ActivityID: ActivityID }), ActivityData);
    }
}
