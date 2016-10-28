package backend;

import com.bazaarvoice.dropwizard.assets.AssetsBundleConfiguration;
import com.bazaarvoice.dropwizard.assets.AssetsConfiguration;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.dropwizard.Configuration;
import io.dropwizard.db.DataSourceFactory;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

/**
 * Created by Alex on 21/10/2016.
 */
public class TimeTrackerConfiguration extends Configuration implements AssetsBundleConfiguration {

    @Valid
    @NotNull
    @JsonProperty("database")
    private DataSourceFactory dataSourceFactory = new DataSourceFactory();

    @Valid
    @NotNull
    @JsonProperty
    private AssetsConfiguration assets = new AssetsConfiguration();

    DataSourceFactory getDataSourceFactory(){
        return this.dataSourceFactory;
    }


    public AssetsConfiguration getAssetsConfiguration() {
        return assets;
    }
}
