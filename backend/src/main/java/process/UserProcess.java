package process;


import db.entity.User;

import javax.ws.rs.NotFoundException;
import java.util.List;

public interface UserProcess {
    List<User> list();
    User verify(User user);
    User create(User user);
    User update(Integer userId, User user) throws NotFoundException;
    User find(Integer userId) throws NotFoundException;
    void delete(Integer userId);
}
