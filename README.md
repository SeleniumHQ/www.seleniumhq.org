seleniumhq.org [![Travis Status](https://travis-ci.org/SeleniumHQ/www.seleniumhq.org.svg?branch=master)](//travis-ci.org/SeleniumHQ/www.seleniumhq.org)
========

Things you need to have installed to run the docs:

* Maven           http://maven.apache.org
* Python          http://python.org
* Sphinx-build    http://sphinx.pocoo.org

To build the docs and run locally (command line):

    mvn appengine:devserver

You will then be able to access them at:

http://localhost:8080

deploying to google appengine run: 

    mvn appengine:update

You will need to authenticate with google and this will only
work if you have a @seleniumhq.org account.
