package process;

import db.ActivityDAO;
import db.entity.Activity;

import javax.ws.rs.NotFoundException;
import java.util.List;
import java.util.Optional;

/**
 * Created by Alex on 21/10/2016.
 */
@SuppressWarnings("deprecation")
public class ActivityProcessDbImpl implements ActivityProcess {
    private ActivityDAO activityDAO;

    public ActivityProcessDbImpl(ActivityDAO activityDAO) {
        this.activityDAO = activityDAO;
    }

    @Override
    public List<Activity> list() {
        return this.activityDAO.list();
    }

    @Override
    public Activity create(Activity activity) {
        return this.activityDAO.findBy(this.activityDAO.create(activity));
    }

    @Override
    public Activity update(Integer ActivityID, Activity updatedActivity) throws NotFoundException {
        Activity activity = this.find(ActivityID);

        activity.setAdminID(updatedActivity.getAdminID());
        activity.setActivityName(updatedActivity.getActivityName());
        activity.setActivityDescription(updatedActivity.getActivityDescription());



        this.activityDAO.update(activity);

        return activity;
    }

    @Override
    public Activity find(Integer ActivityID) throws NotFoundException {
        return Optional
                .ofNullable(this.activityDAO.findBy(ActivityID))
                .orElseThrow(() -> new NotFoundException("activity does not exist"));
    }

    @Override
    public void delete(Integer id) {
        this.activityDAO.deleteBy(id);
    }
}
