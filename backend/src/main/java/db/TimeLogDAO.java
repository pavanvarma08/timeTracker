package db;

import db.entity.TimeLog;
import org.skife.jdbi.v2.sqlobject.*;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapperFactory;
import org.skife.jdbi.v2.tweak.BeanMapperFactory;

import java.util.List;

@RegisterMapperFactory(BeanMapperFactory.class)
public interface TimeLogDAO {

    @SqlUpdate("CREATE TABLE IF NOT EXISTS timelog(timeID int auto_increment primary key, date Date, time float, title varchar(25), username varchar(12) )")
    void createTable();

    @SqlUpdate("INSERT INTO `timelog`(date, time, title, username) VALUES(:date, :time, :title, :username)")
    @GetGeneratedKeys
    int create(@BindBean TimeLog timelog);

    @SqlQuery("SELECT * FROM `timelog`")
    List<TimeLog> list();

    @SqlQuery("SELECT SUM(time) FROM `timelog` WHERE title= :title")
    TimeLog time(@Bind("activityID") String title);

    @SqlQuery("SELECT * FROM `timelog` WHERE timeID= :timeID")
    TimeLog findByTime( @Bind("timeID") Integer timeID);

    @SqlQuery("SELECT * FROM `timelog` WHERE username= :username")
    List<TimeLog> listofuser( @Bind("username") String username);

    @SqlUpdate (" DELETE FROM `timelog` WHERE timeID = :timeID")
    int deleteByTime(@Bind("timeID") Integer timeID);


    @SqlUpdate("UPDATE `timelog` SET  date = :date, time = :time, title= :title, username= :username WHERE timeID = :timeID")
    Integer update( @BindBean TimeLog timelog);


   /* @SqlQuery("SELECT SUM(time) FROM `timelog` WHERE activityID= :activityID")
    TimeLog time(@Bind("activityID") Integer activityID);
*/

    /*  @SqlQuery(" SELECT * FROM `timelog` WHERE activityID = :activityID")
    TimeLog findByActivity( @Bind("activityID") Integer activityID);


   @SqlQuery(" SELECT * FROM `timelog` WHERE userId = :userId")
    List<TimeLog> findByUser(@Bind("userId") Integer userID);


    @SqlQuery (" SELECT * FROM `timelog` WHERE userId = :userId")
    List<TimeLog> findingtimelog( @Bind("userId") Integer userId);


    @SqlQuery (" SELECT * FROM `timelog` WHERE activityID = :activityID AND userID = :userID")
    TimeLog findingtimelog(@BindBean TimeLog timelog);*/


}
