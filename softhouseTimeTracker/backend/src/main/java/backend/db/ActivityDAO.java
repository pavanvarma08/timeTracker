package backend.db;

import backend.db.entity.Activity;
import org.skife.jdbi.v2.sqlobject.*;

import java.util.List;

/**
 * Created by Alex on 21/10/2016.
 */
public interface ActivityDAO {
    @SqlUpdate("CREATE TABLE IF NOT EXISTS activity(ActivityID int auto_increment primary key, ActivityName varchar(25), ActivityDescription varchar(255), AdminID int, UserID int, DateCreated Timestamp, TimeLoggedIn Timestamp, TimeLoggedOut Timestamp )")
    void createTable();
    @SqlUpdate("INSERT INTO `activity` VALUES(:ActivityID, :AdminID, :UserID, :ActivityName, :ActivityDescription,:DateCreated, :TimeLoggedIn, :TimeLoggedOut)")
    @GetGeneratedKeys
    int create(@BindBean Activity activity);
    @SqlQuery("SELECT * FROM `activity`")
    List<Activity> list();
    @SqlQuery("SELECT * FROM `activity` WHERE ActivityID = :ActivityID")
    Activity findBy(@Bind("ActivityID") int ActivityID);
    @SqlUpdate("DELETE FROM `activity` WHERE ActivityID = :ActivityID")
    int deleteBy(@Bind("ActivityID") int ActivityID);
    @SqlUpdate("UPDATE `activity` SET AdminID = :AdminID, ActivityName = :ActivityName, ActivityDescription = :ActivityDescription WHERE ActivityID = :ActivityID")
    Integer update(@BindBean Activity activity);
}
