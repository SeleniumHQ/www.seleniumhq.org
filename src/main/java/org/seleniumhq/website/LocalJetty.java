package org.seleniumhq.website;

import org.mortbay.jetty.Server;
import org.mortbay.jetty.webapp.WebAppContext;
import org.mortbay.jetty.nio.SelectChannelConnector;

public class LocalJetty {
    public static void main(String[] args) throws Exception {
        Server server = new Server();
        SelectChannelConnector connector = new SelectChannelConnector();
        connector.setPort(8080);
        server.addConnector(connector);
        WebAppContext webApp = new WebAppContext("src/main/webapp", "/");
        webApp.setContextPath("/");
        server.addHandler(webApp);
        server.start();
    }
}
