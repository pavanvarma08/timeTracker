package process;


import db.UserDAO;
import db.entity.User;

import javax.ws.rs.NotFoundException;
import java.util.List;
import java.util.Optional;

public class UserProcessDbImpl implements UserProcess{

    private UserDAO userDAO;

    public UserProcessDbImpl (UserDAO userDAO){this.userDAO = userDAO;}

    @Override
    public List<User> list() { return this.userDAO.list();}

    @Override
    public User create(User user) {return this.userDAO.findBy(this.userDAO.create(user)); }

    @Override
    public User update(Integer userId, User updatedUser) throws NotFoundException {
        User user = this.find(userId);

        user.setUsername( updatedUser.getUsername());
        user.setPassword(updatedUser.getPassword());
        user.setFirstname(updatedUser.getFirstname());
        user.setLastname(updatedUser.getLastname());
        user.setAdminCheck(updatedUser.getAdminCheck());

        this.userDAO.update(user);

        return user;
    }

    @Override
    public User find(Integer userId) throws NotFoundException {

        return Optional
                .ofNullable(this.userDAO.findBy(userId))
                .orElseThrow(() -> new NotFoundException(" user does not exist"));
    }

    @Override
    public void delete(Integer userId) { this.userDAO.deleteBy(userId);}
}
