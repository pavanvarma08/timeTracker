package db.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;


public class Activity {
    @JsonProperty

    private int activityID;

    @JsonProperty
    @NotEmpty
    private int adminID;
    @JsonProperty
    @NotEmpty
    private String title;
    @JsonProperty
    @NotEmpty
    private String description;




    // Needed by Jackson deserialization
    public Activity(){

    }


   /* public Activity(int activityID, int adminID, String title, String description ) {
        this.activityID = activityID;
        this.adminID = adminID;
        this.title = title;
        this.description = description;


    }
*/


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



    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    }



