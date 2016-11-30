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

    @SqlQuery("SELECT SUM(time) FROM `timelog` WHERE activityID= :activityID")
    TimeLog time(@Bind("activityID") Integer activityID);

    @SqlQuery("SELECT * FROM `timelog`")
    List<TimeLog> list();

    @SqlQuery("SELECT * FROM `timelog` WHERE timeID= :timeID")
    TimeLog findByTime( @Bind("timeID") Integer timeID);

    @SqlQuery(" SELECT * FROM `timelog` WHERE activityID = :activityID")
    TimeLog findByActivity( @Bind("activityID") Integer activityID);


   @SqlQuery(" SELECT * FROM `timelog` WHERE userID = :userID")
    List<TimeLog> findByUser(@Bind("userID") Integer userID);

    @SqlUpdate (" DELETE FROM `timelog` WHERE timeID = :timeID")
    int deleteByTime(@Bind("timeID") Integer timeID);

    @SqlQuery (" SELECT * FROM `timelog` WHERE userID = :userID")
    List<TimeLog> findingtimelog( @Bind("userID") Integer userID);

   /* @SqlQuery (" SELECT * FROM `timelog` WHERE activityID = :activityID AND userID = :userID")
    TimeLog findingtimelog(@BindBean TimeLog timelog);*/

    @SqlUpdate("UPDATE `timelog` SET userID = :userID, date = :date, time = :time, activityID = :activityID WHERE timeID = :timeID")
    Integer update( @BindBean TimeLog timelog);

}
