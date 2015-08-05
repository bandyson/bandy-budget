package com.bandyson.budget.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.hubspot.dropwizard.guice.GuiceBundle;
import io.dropwizard.Application;
import io.dropwizard.jackson.Jackson;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;

public class BudgetApiApplication extends Application<BudgetApiConfiguration> {

    public static void main(String[] args) throws Exception {
        new BudgetApiApplication().run(args);
    }

    @Override
    public void initialize(Bootstrap<BudgetApiConfiguration> bootstrap) {
        GuiceBundle<BudgetApiConfiguration> guiceBundle = GuiceBundle.<BudgetApiConfiguration>newBuilder()
                .addModule(new BudgetApiModule())
                .enableAutoConfig(getClass().getPackage().getName())
                .setConfigClass(BudgetApiConfiguration.class)
                .build();

        bootstrap.addBundle(guiceBundle);
    }

    @Override
    public void run(BudgetApiConfiguration configuration, Environment environment) throws Exception {
        ObjectMapper objectMapper = environment.getObjectMapper();
        configureObjectMapper(objectMapper);
    }

    private static void configureObjectMapper(ObjectMapper objectMapper)
    {
        objectMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES);
        // objectMapper.registerModule(new VendQuirksModule());
    }

    public static ObjectMapper newObjectMapper()
    {
        ObjectMapper mapper = Jackson.newObjectMapper();
        configureObjectMapper(mapper);
        return mapper;
    }
}
