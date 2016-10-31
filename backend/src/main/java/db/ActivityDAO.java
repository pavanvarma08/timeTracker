package db;

import db.entity.Activity;
import org.skife.jdbi.v2.sqlobject.*;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapperFactory;
import org.skife.jdbi.v2.tweak.BeanMapperFactory;

import java.util.List;

/**
 * Created by Alex on 21/10/2016.
 */
@RegisterMapperFactory(BeanMapperFactory.class)
public interface ActivityDAO {
    @SqlUpdate("CREATE TABLE IF NOT EXISTS activity(activityID int auto_increment primary key, adminID int, title varchar(25), description varchar(255) )")
    void createTable();

    @SqlUpdate("INSERT INTO `activity`(adminID, title, description) VALUES(:adminID,  :title, :description)")
    @GetGeneratedKeys
    int create(@BindBean Activity activity);

    @SqlQuery("SELECT * FROM `activity`")
    List<Activity> list();
    @SqlQuery("SELECT * FROM `activity` WHERE activityID = :activityID")
    Activity findBy(@Bind("activityID") int activityID);
    @SqlUpdate("DELETE FROM `activity` WHERE activityID = :activityID")
    int deleteBy(@Bind("activityID") int activityID);
    @SqlUpdate("UPDATE `activity` SET adminID = :adminID, title = :title, description = :description WHERE activityID = :activityID")
    Integer update(@BindBean Activity activity);
}
