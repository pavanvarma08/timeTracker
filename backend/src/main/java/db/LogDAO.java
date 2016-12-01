package db;

import db.entity.Log;
import org.skife.jdbi.v2.sqlobject.*;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapperFactory;
import org.skife.jdbi.v2.tweak.BeanMapperFactory;

import java.util.List;

@RegisterMapperFactory(BeanMapperFactory.class)
public interface LogDAO {
/*
    @SqlUpdate("CREATE TABLE IF NOT EXISTS log(logID int auto_increment primary key, date Date, totaltime float, title varchar(25), username varchar(12) )")
    void createTable();

    @SqlUpdate("INSERT INTO `log`(date, totaltime, title, username) VALUES(:date, SELECT  sum(timelog.time) from `timelog` WHERE title = :title, :title, :username)")
    @GetGeneratedKeys
    int create(@BindBean Log log);*/

@SqlUpdate("CREATE TABLE IF NOT EXISTS log(logID int auto_increment primary key, date Date, title varchar(25), username varchar(12) )")
void createTable();

    @SqlUpdate("INSERT INTO `log`(date, title, username) VALUES(:date, :title, :username)")
    @GetGeneratedKeys
    int create(@BindBean Log log);


    @SqlQuery("SELECT * FROM `log`")
    List<Log> list();

   @SqlQuery("SELECT * FROM `log` WHERE logID = :logID")
    Log findByTime(@Bind("logID") Integer logID);
/*
    @SqlUpdate (" DELETE FROM `log` WHERE logID = :logID")
    int deleteByTime(@Bind("logID") Integer logID);

    @SqlUpdate("UPDATE `log` SET  date = :date, totaltime = :totaltime, title= :title, username= :username WHERE logID = :logID")
    Integer update( @BindBean Log log);*/


}
