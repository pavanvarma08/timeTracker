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
    public Activity update(Integer activityID, Activity updatedActivity) throws NotFoundException {
        Activity activity = this.find(activityID);

        activity.setAdminID(updatedActivity.getAdminID());
        activity.setTitle(updatedActivity.getTitle());
        activity.setDescription(updatedActivity.getDescription());



        this.activityDAO.update(activity);

        return activity;
    }

    @Override
    public Activity find(Integer activityID) throws NotFoundException {
        return Optional
                .ofNullable(this.activityDAO.findBy(activityID))
                .orElseThrow(() -> new NotFoundException("activity does not exist"));
    }

    @Override
    public void delete(Integer activityID) {
        this.activityDAO.deleteBy(activityID);
    }
}
