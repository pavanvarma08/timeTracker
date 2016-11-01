package db.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;

public class TimeLog {

    @JsonProperty
    private Integer timeID;

    @JsonProperty
    private Date date;

    @JsonProperty
    private float time;

    @JsonProperty
    private Integer activityID;

    @JsonProperty
    private Integer userID;

    public TimeLog() {}

    public TimeLog( Integer timeID, Date date, float time, Integer activityID, Integer userID) {
        this.timeID= timeID;
        this.date = date;
        this.time = time;
        this.activityID = activityID;
        this.userID = userID;
    }

    public Integer getTimeID() { return timeID;}

    public void setTimeID( Integer timeID) {this.timeID = timeID;}

    public Date getDate(){ return date;}

    public void setDate( Date date) {this.date = date; }

    public float getTime() { return time; }

    public void setTime(float time){ this.time = time; }

    public Integer getActivityID(){ return activityID;}

    public void setActivityID(Integer activityID)  {this.activityID = activityID;}

    public Integer getUserID() {return userID;}

    public void setUserID(Integer userID) {this.userID = userID;}
}


