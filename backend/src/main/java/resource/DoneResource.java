package resource;

import javax.ws.rs.Consumes;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import db.entity.Done;
import db.entity.Log;
import javassist.NotFoundException;
import process.DoneProcess;
import process.LogProcess;

import javax.validation.Valid;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

import static com.google.common.base.Preconditions.checkNotNull;

@Path("/done")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)

public class DoneResource {

    private DoneProcess doneProcess;

    public  DoneResource (DoneProcess doneProcess)
    { this.doneProcess = checkNotNull(doneProcess);}

    @GET
    public List<Done> DoneList() {
        return this.doneProcess.list();}

    @GET
    @Path("/{username}")
    public List<Done> DoneByUser( @PathParam("username") String username){
        return this.doneProcess.listed(username);
    }

    @POST
    public Done createTimeLog(Done done)
    {
        return this.doneProcess.create(done);
    }

}
