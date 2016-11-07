package resource;

import db.entity.TimeLog;
import javassist.*;
import javassist.NotFoundException;
import process.TimeLogProcess;

import javax.validation.Valid;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

import static com.google.common.base.Preconditions.checkNotNull;

@Path("/timelog")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class TimeLogResource {

    private TimeLogProcess timelogProcess;

    public  TimeLogResource (TimeLogProcess timelogProcess)
    { this.timelogProcess = checkNotNull(timelogProcess);}

    @GET
    public List<TimeLog> timeLogList() {
        return this.timelogProcess.list();}

    @GET
    @Path("/{timeID}")
       public TimeLog getTimeLog(@PathParam("timeID") Integer timeID) throws javassist.NotFoundException {
       return this.timelogProcess.findTime(timeID);
    }

    @POST
    public TimeLog createTimeLog(TimeLog timelog)
    {
        return this.timelogProcess.create(timelog);
    }

    @PUT
    @Path("/{timeID}")
    public TimeLog updateTimeLog(@PathParam("timeID") Integer timeID,@Valid TimeLog timelog) throws NotFoundException {
        return this.timelogProcess.update(timeID, timelog);}


    @DELETE
    @Path("/{timeID}")
    public void deleteTimeLog ( @PathParam("timeID") Integer timeID) {
        this.timelogProcess.delete(timeID);
    }




}

