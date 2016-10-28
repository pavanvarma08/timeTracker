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
    Activity update(Integer ActivityID, Activity activity) throws NotFoundException;
    Activity find(Integer ActivityID) throws NotFoundException;
    void delete(Integer ActivityID);

}
