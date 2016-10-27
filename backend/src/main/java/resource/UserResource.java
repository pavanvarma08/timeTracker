package resource;


import db.entity.User;
import process.UserProcess;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

import java.util.List;

import static com.google.common.base.Preconditions.checkNotNull;

@Path("/user")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class UserResource {

    private UserProcess userProcess;

    public UserResource(UserProcess userProcess) { this.userProcess = checkNotNull(userProcess);}

    @GET
    public List<User> userList() {return this.userProcess.list();}

    @GET
    @Path("/{userId}")
    public User getUser(@PathParam("userId") Integer userId) { return this.userProcess.find(userId);}

    @POST
    public User createUser(@NotNull @Valid User user) { return this.userProcess.create(user);}

    @PUT
    @Path("/{userId}")
    public User updatedUser(@PathParam("userId") Integer userId, @Valid User user) { return this.userProcess.update(userId, user);}

    @DELETE
    @Path("/{userId}")
    public void deleteUser(@PathParam("userId") Integer userId){ this.userProcess.delete(userId);}

}
