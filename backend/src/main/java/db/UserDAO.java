package db;

import db.entity.User;
import org.skife.jdbi.v2.sqlobject.*;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapperFactory;
import org.skife.jdbi.v2.tweak.BeanMapperFactory;

import java.util.List;

@RegisterMapperFactory(BeanMapperFactory.class)
public interface UserDAO {

    @SqlUpdate("CREATE TABLE IF NOT EXISTS User(userId int auto_increment primary key, username varchar(12), password varchar(12), firstname string, lastname string, adminCheck boolean)")
    void createTable();

    @SqlUpdate("INSERT INTO `User` VALUES(:userId, :username, :password, :firstname, :lastname, :adminCheck)")
    @GetGeneratedKeys
    int create(@BindBean User user);

    @SqlQuery("SELECT * FROM `User`")
    List<User> list();

    @SqlQuery("SELECT * FROM `User` WHERE userId = :userId")
    User findBy(@Bind("userId") int userId);

    @SqlUpdate("DELETE FROM `User` WHERE id = :id")
    int deleteBy(@Bind("userId") int userId);

    @SqlUpdate("UPDATE `User` SET username = :username, password = :password, firstname = :firstname, lastname =:lastname, adminCheck = :adminCheck WHERE userId = :userId")
    Integer update(@BindBean User user);

}
