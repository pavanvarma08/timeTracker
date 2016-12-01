package db;

import db.entity.Done;
import db.entity.TimeLog;

import org.skife.jdbi.v2.sqlobject.*;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapperFactory;
import org.skife.jdbi.v2.tweak.BeanMapperFactory;

import java.util.List;

/**
 * Created by PAVAN VARMA on 01-Dec-16.
 */
@RegisterMapperFactory(BeanMapperFactory.class)
public interface DoneDAO {


    @SqlUpdate("CREATE TABLE IF NOT EXISTS done(ID int auto_increment primary key, date Date, title varchar(25), username varchar(12), time int )")
    void createTable();

    @SqlUpdate("INSERT INTO `done`(date, title, username, time) VALUES(:date, :title, :username, SELECT sum(timelog.time) from `timelog` WHERE title = :title)")
    @GetGeneratedKeys
    int create(@BindBean Done done);

    @SqlQuery("SELECT * FROM `done`")
    List<Done> list();

    @SqlQuery("SELECT * FROM `done` WHERE username= :username")
    List<Done> listUser( @Bind("username")String username);

    @SqlQuery("SELECT * FROM `done` WHERE ID = :ID")
    Done findingTime(@Bind("ID") Integer ID);

}
