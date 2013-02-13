This is a simple war to redirect "http://seleniumhq.org/*" to "http://docs.seleniumhq.org/*"

after packaging this project

    mvn package

copy target/ROOT-1.war to the openqa 'xserve' server at this location:

    /opt/j2ee/domains/openqa.org/projectwebsites/tomcat/webapps/selenium/ROOT.war
