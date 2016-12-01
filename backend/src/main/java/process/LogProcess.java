package process;

import db.entity.Log;

import javax.ws.rs.NotFoundException;
import java.util.List;

public interface LogProcess {

    List<Log> list();
    Log create(Log log);
    Log update(Integer logID, Log log) throws NotFoundException;
   Log findTime(Integer logID) throws NotFoundException;
    void delete(Integer logID);
}
