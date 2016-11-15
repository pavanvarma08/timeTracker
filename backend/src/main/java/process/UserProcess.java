package process;


import db.entity.User;

import javax.ws.rs.NotFoundException;
import java.util.List;

public interface UserProcess {
    List<User> list();
    User verify(User user);
    User create(User user);
    User update(int userID, User user) throws NotFoundException;
    User find(int userID) throws NotFoundException;
    void delete(int userID);
}
