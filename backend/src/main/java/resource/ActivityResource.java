package resource;

import db.entity.Activity;
import process.ActivityProcess;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

import static com.google.common.base.Preconditions.checkNotNull;

/**
 * Created by Alex on 21/10/2016.
 */
@Path("/activity")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class ActivityResource {
    private ActivityProcess activityProcess;

    public ActivityResource(ActivityProcess activityProcess) {
        this.activityProcess = checkNotNull(activityProcess);
    }

    @GET
    public List<Activity> listActivities() {
        return this.activityProcess.list();
    }

    @GET
    @Path("/{activityID}")
    public Activity getActivity(@PathParam("activityID") Integer activityID) {
        return this.activityProcess.find(activityID);
    }

    @POST
    public Activity createActivity(@NotNull  Activity activity) {
        return this.activityProcess.create(activity);
    }

    @PUT
    @Path("/{activityID}")
    public Activity updateActivity(@PathParam("activityID") Integer activityID, @Valid Activity activity) {
        return this.activityProcess.update(activityID, activity);
    }

    @DELETE
    @Path("/{activityID}")
    public void deleteActivity(@PathParam("activityID") Integer activityID) {
        this.activityProcess.delete(activityID);
    }
}
