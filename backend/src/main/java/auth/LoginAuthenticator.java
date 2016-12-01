package auth;

import io.dropwizard.auth.AuthenticationException;
import io.dropwizard.auth.Authenticator;
import  io.dropwizard.auth.basic.BasicCredentials;
import  db.entity.User;
import  process.UserProcess;

import java.util.Optional;

public class LoginAuthenticator implements Authenticator<BasicCredentials, User>
{

    private UserProcess userProcess;

    public LoginAuthenticator(UserProcess userProcess) { this.userProcess = userProcess;}

    @Override
    public Optional<User> authenticate(BasicCredentials credentials) throws AuthenticationException
    {
       User user = new User(credentials.getUsername(), credentials.getPassword());
       return  Optional.ofNullable(this.userProcess.verify(user));
    }
}
