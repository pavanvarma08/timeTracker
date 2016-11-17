package resource;


import db.entity.User;
import process.UserProcess;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

import java.util.List;

import static com.google.common.base.Preconditions.checkNotNull;

@Path("login")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class UserResource {

    private UserProcess userProcess;

    public UserResource(UserProcess userProcess) { this.userProcess = checkNotNull(userProcess);}

    @GET
    @Path("/user")
    public List<User> userList() {return this.userProcess.list();}

   //@POST
  //  @Path("/user/{username}/{password}/")
    //public User verify(@PathParam("username") String username, @PathParam("password") String password, @Valid User user) { return  this.userProcess.verify(username, password, user);}*/

   @POST

   public User verify( User user) { return this.userProcess.verify(user);}

    @GET
    @Path("/user/{userId}")
    public User getUser(@PathParam("userId") Integer userId) { return this.userProcess.find(userId);}

    @POST
    @Path("/user")
    public User createUser(@NotNull User user) { return this.userProcess.create(user);}

    @PUT
    @Path("/user/{userId}")
    public User updatedUser(@PathParam("userId") Integer userId, User user) { return this.userProcess.update(userId, user);}

    @DELETE
    @Path("/user/{userId}")
    public void deleteUser(@PathParam("userId") Integer userId){ this.userProcess.delete(userId);}

}
