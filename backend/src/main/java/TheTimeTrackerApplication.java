//package backend;

/**
 * Created by Alex on 24/10/2016.
 */

import db.ActivityDAO;
import db.UserDAO;
import process.ActivityProcess;
import process.ActivityProcessDbImpl;
import process.UserProcess;
import process.UserProcessDbImpl;
import resource.ActivityResource;
import com.bazaarvoice.dropwizard.assets.ConfiguredAssetsBundle;
import io.dropwizard.Application;
import io.dropwizard.jdbi.DBIFactory;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import org.h2.tools.Server;
import org.skife.jdbi.v2.DBI;
import resource.UserResource;


@SuppressWarnings("deprecation")
public class TheTimeTrackerApplication extends Application<TimeTrackerConfiguration> {
    @Override
    public void run(TimeTrackerConfiguration configuration, Environment environment) throws Exception {
        final Server h2db = Server.createWebServer("-webDaemon");
        final DBIFactory factory = new DBIFactory();
        final DBI dbi = factory.build(environment, configuration.getDataSourceFactory(), "h2");

        // h2
        h2db.start();

        // data access objects
        final UserDAO userDAO = dbi.onDemand(UserDAO.class);
        final ActivityDAO activityDAO = dbi.onDemand(ActivityDAO.class);

        // tables
        userDAO.createTable();
        activityDAO.createTable();

        // processes
        UserProcess userprocess = new UserProcessDbImpl(userDAO);
        ActivityProcess activityProcess = new ActivityProcessDbImpl(activityDAO);

        // resources
        UserResource userResource = new UserResource(userprocess);
        ActivityResource activityResource = new ActivityResource(activityProcess);

        // environment
       environment.jersey().register(userResource);
        environment.jersey().register(activityResource);
    }

    @Override
    public void initialize(Bootstrap<TimeTrackerConfiguration> configuration) {
        configuration.addBundle(new ConfiguredAssetsBundle("/assets/", "/", "index.html"));
    }

    public static void main(String[] args) throws Exception {
        new TheTimeTrackerApplication().run(args);
    }
}