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
    @Path("/{userID}")
    public User getUser(@PathParam("userID") Integer userID) { return this.userProcess.find(userID);}

    @POST
    public User createUser(@NotNull User user) { return this.userProcess.create(user);}

    @PUT
    @Path("/{userID}")
    public User updatedUser(@PathParam("userID") Integer userID, @Valid User user) { return this.userProcess.update(userID, user);}

    @DELETE
    @Path("/{userID}")
    public void deleteUser(@PathParam("userID") Integer userID){ this.userProcess.delete(userID);}

}
