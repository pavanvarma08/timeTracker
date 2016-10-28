package process;

import db.entity.TimeLog;
import javassist.NotFoundException;

import java.util.List;

/**
 * Created by PAVAN VARMA on 28-Oct-16.
 */
public interface TimeLogProcess {
    List<TimeLog> list();

    TimeLog create(TimeLog timelog);

    TimeLog update(Integer id, TimeLog timelog) throws NotFoundException;

    TimeLog find(Integer id) throws NotFoundException;

    void delete(Integer id);
}