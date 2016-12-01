package auth;

import io.dropwizard.auth.Authorizer;
import db.entity.User;
import process.UserProcess;
import io.dropwizard.*;

import javax.ws.rs.ForbiddenException;

public class LoginAuthorizer implements  Authorizer<User> {

    private UserProcess userProcess;

    public LoginAuthorizer( UserProcess userProcess) { this.userProcess = userProcess;}

    public boolean authorize(User user, String role) throws ForbiddenException {

       User test = this.userProcess.verify(user);
       return test.getAdminCheck().equals("TRUE") && role.equals("TRUE");
    }

}
