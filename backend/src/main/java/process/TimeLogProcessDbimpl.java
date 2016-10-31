package process;

import db.TimeLogDAO;
import db.entity.TimeLog;

import javax.ws.rs.NotFoundException;
import java.util.List;
import java.util.Optional;

/**
 * Created by PAVAN VARMA on 28-Oct-16.
 */
public class TimeLogProcessDbimpl implements TimeLogProcess {
    private TimeLogDAO timelogDAO;
//repaired by Alex Bramah-Lawani, parameter passing error fixed I had to fix it in order to run the program
    public TimeLogProcessDbimpl(TimeLogDAO timelogDAO) { this.timelogDAO = timelogDAO; }

    public List<TimeLog> list() { return this.timelogDAO.list(); }

//fixed by Alex Bramah-Lawani, findBy replaced by findbyUser
    public TimeLog create(TimeLog timelog) { return this.timelogDAO.findByUser(this.timelogDAO.create(timelog)); }



    @Override
    public TimeLog find(Integer id) throws NotFoundException {
        return Optional
                .ofNullable(this.timelogDAO.findByUser(id))
                .orElseThrow(() -> new NotFoundException("activity does not exist"));
    }

    public TimeLog update(Integer id, TimeLog updatedTimelog) throws NotFoundException {
        TimeLog timeLog = this.find(id);
        timeLog.setTime(updatedTimelog.getTime());
        this.timelogDAO.update(timeLog);

        return timeLog;
    }
    //I added this it is not necessarily correct, I just added it so I could run the code without errors, could you please inspect and fix this
    @Override
    public void delete(Integer id) {
        this.timelogDAO.deleteByActivity(id);
    }
}
