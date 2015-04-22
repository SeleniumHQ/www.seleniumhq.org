Things you need to have installed to run the docs:

* Maven           http://maven.apache.org
* Python          http://python.org
* Sphinx-build    http://sphinx.pocoo.org

To build the docs and run locally (command line):

    mvn clean jetty:run

You will then be able to access them at:

http://localhost:8080

deploying to google appengine run: 

    mvn -Dgae.home=<absolute path to>/appengine-java-sdk clean gae:deploy

Specify your username/password to the appengine account by specifying
it in your ~/.m2/settings.xml file, as described here:
http://www.kindleit.net/maven_gae_plugin/examples/passwordPrompt.html

Sphinx may be installed using easy_install or pip
