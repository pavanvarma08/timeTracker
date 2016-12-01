package db.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;

public class Log{
    @JsonProperty
    private Integer logID;

    @JsonProperty
    private Date date;

    @JsonProperty
    private float totaltime;

    @JsonProperty
    private String title;

    @JsonProperty
    private String username;


    public Log() {}

    public Log( Integer logID, Date date, float totaltime, String username, String title) {
        this.logID= logID;
        this.date = date;
        this.totaltime = totaltime;
        this.title = title;
        this.username = username;
    }

    public Integer getLogID() { return logID;}

    public void setLogID( Integer logID) {this.logID = logID;}

    public Date getDate(){ return date;}

    public void setDate( Date date) {this.date = date; }

    public float getTime() { return totaltime; }

    public void setTime(float totaltime){ this.totaltime = totaltime; }

    public String getTitle() {return title;}

    public void setTitle(String title) {this.title = title;}

    public String getUsername() { return username;}

    public void setUsername(String username) { this.username=username;}

}

