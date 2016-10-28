package db.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class User {

    @JsonProperty
    private Integer userId;

    @JsonProperty
    @NotEmpty
    @Length(max=12, message=" less than 12 characters")
    private String username;

    @JsonProperty
    @NotEmpty
    @Length(min=8, message=" atleast 8 characters" )
    private String password;

    @JsonProperty
    @NotEmpty
    private String firstname;

    @JsonProperty
    @NotEmpty
    private String lastname;

    @JsonProperty
    @NotEmpty
    private boolean adminCheck;

    public User() {}

    public User (Integer userId, String username, String password, String firstname, String lastname, Boolean adminCheck)
    {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.firstname = firstname;
        this.lastname = lastname;
        this.adminCheck = adminCheck;
    }

    public Integer getUserId(){ return userId;}

    public void setUserId( Integer user_id) { this.userId = user_id;}

    public String getUsername() { return username;}

    public void setUsername(String username) { this.username=username;}

    public String getPassword() { return password;}

    public void setPassword(String password) { this.password = password;}

    public String getFirstname() { return firstname;}

    public void setFirstname(String firstname) { this.firstname= firstname;}

    public String getLastname() { return lastname;}

    public void setLastname(String lastname) { this.lastname = lastname;}

    public Boolean getAdminCheck(){ return adminCheck;}

    public void setAdminCheck(Boolean adminCheck){ this.adminCheck = adminCheck;}

}
