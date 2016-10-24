package backend;

/**
 * Created by Alex on 24/10/2016.
 */

import backend.db.ActivityDAO;
import backend.process.ActivityProcess;
import backend.process.ActivityProcessDbImpl;
import backend.resource.ActivityResource;
import com.bazaarvoice.dropwizard.assets.ConfiguredAssetsBundle;
import io.dropwizard.Application;
import io.dropwizard.jdbi.DBIFactory;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import org.h2.tools.Server;
import org.skife.jdbi.v2.DBI;



/**
 * Created by Alex on 21/10/2016.
 */
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
        final ActivityDAO activityDAO = dbi.onDemand(ActivityDAO.class);

        // tables
        activityDAO.createTable();

        // processes
        ActivityProcess activityProcess = new ActivityProcessDbImpl(activityDAO);

        // resources
        ActivityResource activityResource = new ActivityResource(activityProcess);

        // environment
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