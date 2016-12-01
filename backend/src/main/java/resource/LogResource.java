package resource;

import db.entity.Log;
import javassist.NotFoundException;
import process.LogProcess;

import javax.validation.Valid;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

import static com.google.common.base.Preconditions.checkNotNull;

@Path("/log")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class LogResource {

    private LogProcess logProcess;

    public  LogResource (LogProcess logProcess)
    { this.logProcess = checkNotNull(logProcess);}

    @GET
    public List<Log> LogList() {
        return this.logProcess.list();}

    @POST
    public Log createTimeLog(Log log)
    {
        return this.logProcess.create(log);
    }

    @PUT
    @Path("/{logID}")
    public Log updateLog(@PathParam("logID") Integer logID,@Valid Log log) throws NotFoundException {
        return this.logProcess.update(logID, log);}

    @DELETE
    @Path("/{logID}")
    public void deleteLog ( @PathParam("logID") Integer logID) {
        this.logProcess.delete(logID);
    }
}
