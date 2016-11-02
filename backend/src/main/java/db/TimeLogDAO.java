package db;

import db.entity.TimeLog;
import org.skife.jdbi.v2.sqlobject.*;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapperFactory;
import org.skife.jdbi.v2.tweak.BeanMapperFactory;

import java.util.List;

@RegisterMapperFactory(BeanMapperFactory.class)
public interface TimeLogDAO {

    @SqlUpdate("CREATE TABLE IF NOT EXISTS timelog(timeID int auto_increment primary key, date Date, time float, activityID int , userID int )")
    void createTable();

    @SqlUpdate("INSERT INTO `timelog`(date, time, activityID) VALUES(:date, :time, :activityID)")
    @GetGeneratedKeys
    int create(@BindBean TimeLog timelog);

    @SqlQuery("SELECT * FROM `timelog`")
    List<TimeLog> list();

    @SqlQuery("SELECT * FROM `timelog` WHERE timeID= :timeID")
    TimeLog findByTime( @Bind("timeID") int timeID);

    @SqlQuery(" SELECT * FROM `timelog` WHERE activityID = :activityID")
    TimeLog findByActivity( @Bind("activityID") int activityID);

    @SqlQuery(" SELECT * FROM `timelog` WHERE userID = :userID")
    TimeLog findByUser(@Bind("userID") int userID);

    @SqlUpdate (" DELETE FROM `timelog` WHERE timeID = :timeID")
    int deleteByTime(@Bind("timeID") int timeID);

/*    @SqlUpdate("DELTE FROM `timelog` WHERE activityID = :activityID")
    int deleteByActivity(@Bind("activityID") int activityID);

    @SqlUpdate("DELETE FROM `timelog` WHERE userID = :userID")
    int deleteByUser (@Bind("userID") int userID);
*/
    @SqlUpdate("UPDATE `timelog` SET userID = :userID, date = :date, time = :time, activityID = :activityID WHERE timeID = :timeID")
    Integer update( @BindBean TimeLog timelog);

}
