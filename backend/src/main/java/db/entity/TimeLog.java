package db.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;

public class TimeLog {

    @JsonProperty
    private Date date;

    @JsonProperty
    private float time;

    @JsonProperty
    private Integer activityID;

    @JsonProperty
    private Integer userID;

    public TimeLog() {}

    public TimeLog( Date date, float time, Integer activityID, Integer userID) {
        this.date = date;
        this.time = time;
        this.activityID = activityID;
        this.userID = userID;
    }

    public Date getDate(){ return date;}

    public void setDate( Date date) {this.date = date; }

    public float getTime() { return time; }

    public void setTime(float time){ this.time = time; }

    public Integer getActivityID(){ return activityID;}

    public void setActivityID(Integer activityID)  {this.activityID = activityID;}

    public Integer getUserID() {return userID;}

    public void setUserID(Integer userID) {this.userID = userID;}
}


