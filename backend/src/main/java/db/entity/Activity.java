package backend.db.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;

/**
 * Created by Alex on 21/10/2016.
 */
public class Activity {
    @JsonProperty
    @NotEmpty
    private int activityID;

    @JsonProperty
    @NotEmpty
    private int adminID;
    @JsonProperty
    @NotEmpty
    private int activityName;
    @JsonProperty
    @NotEmpty
    private int activityDescription;
    @JsonProperty
    @NotEmpty
    private int userID;

    @JsonProperty
    @NotEmpty
    private DateTime dateCreated;

    @JsonProperty
    @NotEmpty
    private DateTime timeLoggedIn;

    @JsonProperty
    @NotEmpty
    private DateTime timeLoggedOut;

    // Needed by Jackson deserialization
    public Activity(){

    }


    public Activity(int activityID, int adminID, int activityName, int activityDescription, int userID, DateTime dateCreated, DateTime timeLoggedIn, DateTime timeLoggedOut) {
        this.activityID = activityID;
        this.adminID = adminID;
        this.activityName = activityName;
        this.activityDescription = activityDescription;
        this.userID = userID;
        this.dateCreated = dateCreated;
        this.timeLoggedIn = timeLoggedIn;
        this.timeLoggedOut = timeLoggedOut;
    }



    public int getActivityID() {
        return activityID;
    }

    public void setActivityID(int activityID) {
        this.activityID = activityID;
    }

    public int getAdminID() {
        return adminID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public DateTime getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(DateTime dateCreated) {
        this.dateCreated = dateCreated;
    }

    public int getActivityName() {
        return activityName;
    }

    public void setActivityName(int activityName) {
        this.activityName = activityName;
    }

    public int getActivityDescription() {
        return activityDescription;
    }

    public void setActivityDescription(int activityDescription) {
        this.activityDescription = activityDescription;
    }

    public DateTime getTimeLoggedIn() {
        return timeLoggedIn;
    }

    public void setTimeLoggedIn(DateTime timeLoggedIn) {
        this.timeLoggedIn = timeLoggedIn;
    }

    public DateTime getTimeLoggedOut() {
        return timeLoggedOut;
    }

    public void setTimeLoggedOut(DateTime timeLoggedOut) {
        this.timeLoggedOut = timeLoggedOut;
    }
}
