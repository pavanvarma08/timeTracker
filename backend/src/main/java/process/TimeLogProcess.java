
package process;


import db.entity.TimeLog;
import javassist.NotFoundException;

import java.util.List;

public interface TimeLogProcess {
    List<TimeLog> list();

    TimeLog create(TimeLog timelog);

    TimeLog update(Integer timeID, TimeLog timelog) throws NotFoundException;

    TimeLog findTime(Integer timeID) throws NotFoundException;

    //TimeLog findUser(Integer userID) throws NotFoundException;

    TimeLog findActivity(Integer activityID) throws NotFoundException;

   List<TimeLog> findTimelog(Integer userId);

 // List<TimeLog> findTimelog(TimeLog timelog);

    TimeLog addTime(Integer activityID);

    void delete(Integer timeID);
}