package db.entity;

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
    private int title;
    @JsonProperty
    @NotEmpty
    private int description;




    // Needed by Jackson deserialization
    public Activity(){

    }


    public Activity(int activityID, int adminID, int title, int description ) {
        this.activityID = activityID;
        this.adminID = adminID;
        this.title = title;
        this.description = description;


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



    public int getTitle() {
        return title;
    }

    public void setTitle(int title) {
        this.title = title;
    }

    public int getDescription() {
        return description;
    }

    public void setDescription(int description) {
        this.description = description;
    }
    }



