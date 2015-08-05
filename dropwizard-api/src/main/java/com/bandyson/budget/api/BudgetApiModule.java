package com.bandyson.budget.api;

import com.google.inject.AbstractModule;
import com.google.inject.Provides;
import io.dropwizard.setup.Environment;

public class BudgetApiModule extends AbstractModule {

    @Override
    protected void configure() {

        // TODO:
        // bind(BillDAO.class).to(BillDBIDAO.class);
    }

    // private DBIManager manager;

    /*
    @Provides
    public synchronized DBIManager buildDBIManager(Environment environment, CashApiConfiguration configuration) throws ClassNotFoundException {
        if(manager == null) {
            manager = DBIManager.build(environment, configuration.getSlaveDatasources(), configuration.getMasterDatasources());
        }
        return manager;
    }
    */
}
