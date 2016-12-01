package db.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import javax.security.auth.Subject;
import java.security.Principal;

public class User implements Principal {

    @JsonProperty
    private Integer userId;

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
    private String adminCheck;

    public User() {}

    public User(String username, String password) {

        this.username = username;
        this.password = password;
    }

    public User (Integer userId, String username, String password, String firstname, String lastname, String adminCheck)
    {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.firstname = firstname;
        this.lastname = lastname;
        this.adminCheck = adminCheck;
    }




    public Integer getuserId(){ return userId;}

    public void setuserId( Integer userId) { this.userId = userId;}

    public String getUsername() { return username;}

    public void setUsername(String username) { this.username=username;}

    public String getPassword() { return password;}

    public void setPassword(String password) { this.password = password;}

    public String getFirstname() { return firstname;}

    public void setFirstname(String firstname) { this.firstname= firstname;}

    public String getLastname() { return lastname;}

    public void setLastname(String lastname) { this.lastname = lastname;}

    public String getAdminCheck(){ return adminCheck;}

    public void setAdminCheck(String adminCheck){ this.adminCheck = adminCheck;}


    @Override
    public String getName() {
        return null;
    }
}
