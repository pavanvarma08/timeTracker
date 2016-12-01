package db.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import java.util.Date;

public class TimeLog {

    @JsonProperty
    private Integer timeID;

    @JsonProperty
    private Date date;

    @JsonProperty
    private float time;

  /*  @JsonProperty
    private Integer activityID;

    @JsonProperty
    private Integer userId;

*/

    @JsonProperty
    private String title;

    @JsonProperty
    private String username;


    public TimeLog() {}

    public TimeLog( Integer timeID, Date date, float time, String username, String title) {
        this.timeID= timeID;
        this.date = date;
        this.time = time;
        this.title = title;
        this.username = username;
       /* this.activityID = activityID;
        this.userId = userId;

           */
    }

    public Integer getTimeID() { return timeID;}

    public void setTimeID( Integer timeID) {this.timeID = timeID;}

    public Date getDate(){ return date;}

    public void setDate( Date date) {this.date = date; }

    public float getTime() { return time; }

    public void setTime(float time){ this.time = time; }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUsername() { return username;}

    public void setUsername(String username) { this.username=username;}

/*
    public Integer getActivityID(){ return activityID;}

    public void setActivityID(Integer activityID)  {this.activityID = activityID;}

    public Integer getUserId() {return userId;}

    public void setUserId(Integer userId) {this.userId = userId;}

    */
}


