package db.entity;


import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;

public class Done {

    @JsonProperty
    private Integer ID;

    @JsonProperty
    private Date date;

    @JsonProperty
    private Integer time;

    @JsonProperty
    private String title;

    @JsonProperty
    private String username;


    public Done() {}

    public Done( Integer ID, Date date, Integer time, String username, String title) {
        this.ID= ID;
        this.date = date;
        this.time = time;
        this.title = title;
        this.username = username;
    }

    public Integer getLogID() { return ID;}

    public void setLogID( Integer logID) {this.ID = logID;}

    public Date getDate(){ return date;}

    public void setDate( Date date) {this.date = date; }

    public Integer getTime() { return time; }

    public void setTime(Integer time){ this.time = time; }

    public String getTitle() {return title;}

    public void setTitle(String title) {this.title = title;}

    public String getUsername() { return username;}

    public void setUsername(String username) { this.username=username;}

}
