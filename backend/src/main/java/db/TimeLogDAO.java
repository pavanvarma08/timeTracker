package db;

import db.entity.TimeLog;
import org.skife.jdbi.v2.sqlobject.*;

import java.util.List;

public interface TimeLogDAO {

    @SqlUpdate("CREATE TABLE IF NOT EXISTS timelog(date Date, time float, activityID int foreign key, userID int foreign key)")
    void createTable();

    @SqlUpdate("INSERT INTO `timelog` VALUES(:date, :time, :activityID, :userID)")
    @GetGeneratedKeys
    int create(TimeLog timeLog);

    @SqlQuery("SELECT * FROM `timelog`")
    List<TimeLog> list();

    @SqlQuery(" SELECT * FROM `timelog` WHERE activityID = :activityID")
    TimeLog findByActivity( @Bind("activityID") int activityID);

    @SqlQuery(" SELECT * FROM `timelog` WHERE userID = :userID")
    TimeLog findByUser(@Bind("userID") int userID);

    @SqlUpdate("DELTE FROM `timelog` WHERE activityID = :activityID")
    int deleteByActivity(@Bind("activityID") int activityID);

    @SqlUpdate("DELETE FROM `timelog` WHERE userID = :userID")
    int deleteByUser (@Bind("userID") int userID);

    @SqlUpdate("UPDATE `timelog` SET date = :date, time = :time, activityID = :activityID WHERE userID = :userID")
    Integer update( @BindBean TimeLog timelog);

}
