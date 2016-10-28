package process;


import db.entity.User;

import javax.ws.rs.NotFoundException;
import java.util.List;

public interface UserProcess {
    List<User> list();
    User create(User user);
    User update(Integer userID, User user) throws NotFoundException;
    User find(Integer userID) throws NotFoundException;
    void delete(Integer userID);
}
