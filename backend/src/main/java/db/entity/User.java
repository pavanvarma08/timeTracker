package db.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class User {

    @JsonProperty
    private int userID;

    @JsonProperty
    @NotEmpty
    @Length(max=12, message=" less than 12 characters")
    private String username;

    @JsonProperty
    @NotEmpty
    private String password;

    @JsonProperty
    @NotEmpty
    private String firstname;

    @JsonProperty
    @NotEmpty
    private String lastname;

    @JsonProperty
    @NotEmpty
    private int adminCheck;

    public User() {}

    public User (int userID, String username, String password, String firstname, String lastname, int adminCheck)
    {
        this.userID = userID;
        this.username = username;
        this.password = password;
        this.firstname = firstname;
        this.lastname = lastname;
        this.adminCheck = adminCheck;
    }

    public int getUserId(){ return userID;}

    public void setUserId( int userID) { this.userID = userID;}

    public String getUsername() { return username;}

    public void setUsername(String username) { this.username=username;}

    public String getPassword() { return password;}

    public void setPassword(String password) { this.password = password;}

    public String getFirstname() { return firstname;}

    public void setFirstname(String firstname) { this.firstname= firstname;}

    public String getLastname() { return lastname;}

    public void setLastname(String lastname) { this.lastname = lastname;}

    public int getAdminCheck(){ return adminCheck;}

    public void setAdminCheck(int adminCheck){ this.adminCheck = adminCheck;}

}
