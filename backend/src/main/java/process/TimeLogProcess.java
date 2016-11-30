
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

<<<<<<< HEAD
   List<TimeLog> findTimelog(Integer userId);

 // List<TimeLog> findTimelog(TimeLog timelog);
=======
    TimeLog findTimelog(Integer userId);

   // TimeLog findTimelog(Integer userId, Integer activityID);
>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8

    TimeLog addTime(Integer activityID);

    void delete(Integer timeID);
}