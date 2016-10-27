package backend.resource;

import backend.db.entity.Activity;
import backend.process.ActivityProcess;

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
    @Path("/{ActivityID}")
    public Activity getActivity(@PathParam("ActivityID") Integer ActivityID) {
        return this.activityProcess.find(ActivityID);
    }

    @POST
    public Activity createActivity(@NotNull @Valid Activity activity) {
        return this.activityProcess.create(activity);
    }

    @PUT
    @Path("/{ActivityID}")
    public Activity updateActivity(@PathParam("ActivityID") Integer ActivityID, @Valid Activity activity) {
        return this.activityProcess.update(ActivityID, activity);
    }

    @DELETE
    @Path("/{ActivityID}")
    public void deleteNote(@PathParam("ActivityID") Integer ActivityID) {
        this.activityProcess.delete(ActivityID);
    }
}
