package process;

import db.entity.Activity;

import javax.ws.rs.NotFoundException;
import java.util.List;

/**
 * Created by Alex on 21/10/2016.
 */
public interface ActivityProcess {
    List<Activity> list();
    Activity create(Activity activity);
    Activity update(Integer id, Activity activity) throws NotFoundException;
    Activity find(Integer id) throws NotFoundException;
    void delete(Integer id);

}
