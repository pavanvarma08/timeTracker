package db;

import db.entity.User;
import org.skife.jdbi.v2.sqlobject.*;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapperFactory;
import org.skife.jdbi.v2.tweak.BeanMapperFactory;

import java.util.List;

@RegisterMapperFactory(BeanMapperFactory.class)
public interface UserDAO {

    @SqlUpdate("CREATE TABLE IF NOT EXISTS User(userID int auto_increment primary key, username varchar(12), password varchar(12), firstname varchar, lastname varchar, adminCheck int)")
    void createTable();

    @SqlUpdate("INSERT INTO `User`(username, password, firstname, lastname, adminCheck) VALUES(:username, :password, :firstname, :lastname, :adminCheck)")
    @GetGeneratedKeys
    int create(@BindBean User user);

    @SqlQuery("SELECT * FROM `User`")
    List<User> list();

    @SqlQuery("SELECT * FROM `User` WHERE userID = :userID")
    User findBy(@Bind("userID") int userID);

    @SqlUpdate("DELETE FROM `User` WHERE userID = :userID")
    int deleteBy(@Bind("userID") int userID);

    @SqlUpdate("UPDATE `User` SET username = :username, password = :password, firstname = :firstname, lastname =:lastname, adminCheck = :adminCheck WHERE userId = :userId")
    int update(@BindBean User user);

}
