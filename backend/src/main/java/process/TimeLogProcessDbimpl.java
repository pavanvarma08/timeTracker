package process;

import db.TimeLogDAO;
import db.entity.TimeLog;

import javax.ws.rs.NotFoundException;
import java.util.List;

/**
 * Created by PAVAN VARMA on 28-Oct-16.
 */
public class TimeLogProcessDbimpl implements TimeLogProcess {
    private TimeLogDAO timelogDAO;

    public TimeLogProcessDbimpl(TimeLogDAO) { this.timelogDAO = timelogDAO; }

    public List<TimeLog> list() { return this.timelogDAO.list(); }

    public TimeLog create(TimeLog timelog) { return this.timelogDAO.findBy(this.timelogDAO.create(timelog)); }

    public TimeLog update(Integer id, TimeLog updatedTimelog) throws NotFoundException {

    }
}
