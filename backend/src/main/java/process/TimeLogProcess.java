
package process;


import db.entity.TimeLog;
import javassist.NotFoundException;

import java.util.List;

public interface TimeLogProcess {
    List<TimeLog> list();

    TimeLog create(TimeLog timelog);

    TimeLog update(Integer timeID, TimeLog timelog) throws NotFoundException;

    TimeLog findTime(Integer timeID) throws NotFoundException;

    //TimeLog findUser(Integer userId) throws NotFoundException;

 //   TimeLog findActivity(Integer activityID) throws NotFoundException;

   List<TimeLog> findTimelog(String username);

    TimeLog addTime(String title);

    void delete(Integer timeID);
}