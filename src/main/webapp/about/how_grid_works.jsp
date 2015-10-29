<html>
<head>
    <title>Selenium Grid - How it Works</title>
    <link rel="stylesheet" type="text/css" href="stylesheets/site.css" />
    <link rel="stylesheet" type="text/css" href="stylesheets/document.css" />
</head>
<body>

<div class="header">
    <a href="index.html"><img alt="Selenium_grid_logo_large" src="images/selenium-grid-logo-large.png"/></a>
    How it Works
</div>


<p>
    To understand Selenium Grid you first need to understand how the
    standard <a href="http://www.seleniumhq.org/docs/">Selenium</a> web
    testing tool works.
</p>

<h2 id="traditional-setup">Traditional Selenium Setup</h2>

<p>
    To understand Selenium Grid you first need to understand how the
    standard <a href="http://www.seleniumhq.org/docs/">Selenium</a> web
    testing tool works.
</p><p>
    Fundamentally, Selenium is a tool that let you programmatically
    launch a browser, drive the browser (open a url, enter some data,
    click on a link) and check the browser state (a section is visible,
    specific text is present, a widget is disabled). It is the tool of
    choice for automating web testing.
</p><p>
    You drive the key piece in charge of controlling the browser, the
    Selenium Remote Control, by sending HTTP requests following a specific
    protocol (called Selenese). Therefore, basically all that a Selenium
    test does, is to target a specific Selenium Remote Control and to send
    it HTTP requests (through a higher level client API).
</p><p>
    <a href="diagrams/Traditional%20Selenium%20Setup.png" title="Click for larger image">
        <img src="diagrams/Traditional%20Selenium%20Setup%20-%20Small.png" alt=""/></a>
</p><p>
    This setup works great for a few tests, but as your test suite starts
    getting bigger, its limitations become clearer:
</p>
<ul>
    <li>
        The Selenium remote control is quite slow at driving the browser. Therefore,
        unless your application or your network is especially slow, the remote
        control/browser pair will end up being the bottleneck of your test suite.
    </li><li>
    ﻿      You can only run a limited number of concurrent tests on the same
    ﻿      remote control before seriously impacting its stability.
    ﻿      Practically speaking, launching more than 6 browsers on the
    ﻿      same Selenium Remote Control is not advisable. The limitations
    ﻿      are even more drastic for Internet Explorer.
    ﻿    </li>
    <li>
        ﻿      Your tests can target multiple Selenium Remote Controls to work
        ﻿      around the limitation on the number of parallel tests that you
        ﻿      can run on a single remote control. Nevertheless that does not
        ﻿      scale very well. It can easily be done at the continuous
        ﻿      integration build level (one for Internet Explorer, one for
        ﻿      Firefox, one for Safari). However, allocating a Selenium Remote
        ﻿      Control to a specific test quickly becomes a nightmare if you
        ﻿      want to run your selenium tests in a highly parallelized fashion.
        ﻿      Your tests also become way too aware of the Selenium Remote Control
        ﻿      infrastructure, which makes it difficult to evolve your
        ﻿      infrastructure transparently.
        ﻿    </li>
</ul>
<p>
    ﻿    Due to all these limitations, Selenium tests typically run in sequence
    or are only mildly parallelized. That makes for test suites that take
    from half an hour to multiple hours to run. Not ideal, especially if you
    strive for Agile processes emphasizing a quick feedback loop.
</p>

<h2 id="grid-setup">Selenium Grid Setup</h2>

<p>
    Selenium Grid builds on the traditional Selenium setup, taking
    advantage of the following properties:
</p>

<ul>
    <li>
        The Selenium test, the application under test, and the remote
        control/browser pair do not have to be co-located. They communicate
        through HTTP, so they can all live on different machines.
    </li><li>
    The Selenium tests and the web application under test are obviously
    specific to a particular project. Nevertheless, neither the Selenium
    remote control nor the browser is tied to a specific application. As a
    matter of fact, they provide a capacity that can easily be shared by
    multiple applications and multiple projects.
</li>
</ul>
<p>
    Consequently, if only we could build a distributed grid of Selenium Remote
    Controls, we could easily share it across builds, applications, projects -
    even potentially across organizations. Of course we would also need to
    address the scalability issues as described earlier when covering the
    traditional Selenium setup. This is why we need a component in charge of:
</p>
<ul>
    <li>Allocating a Selenium Remote Control to a specific test (transparently)</li>
    <li>Limiting the number of concurrent test runs on each Remote Control</li>
    <li>Shielding the tests from the actual grid infrastructure</li>
</ul>
<p>Selenium Grid calls this component the Selenium Hub.</p>
<ul>
    <li>
        The Hub exposes an external interface that is exactly the same as the
        one of a traditional Remote Control. This means that a test suite can
        transparently target a regular Remote Control or a Selenium Hub with
        no code change. It just needs to target a different IP address. This
        is important as it shields the tests from the grid infrastructure
        (which you can scale transparently). This also makes the
        developer&#8217;s life easier. The <em>same</em> test can be run
        locally on a developer machine, or run on a heavy duty distributed
        grid as part of a build &#8211; without ever changing a line of code.
    </li><li>
    The Hub allocates Selenium Remote Controls to each test. The Hub is
    also in charge of routing the Selenese requests from the tests to the
    appropriate Remote Control as well as keeping track of testing
    sessions.
</li><li>
    When a new test starts, the Hub puts its first request on hold if
    there is no available Remote Control in the grid providing the
    appropriate capabilities. As soon as a suitable Remote Control becomes
    available, the Hub will serve the request. For the whole time, the
    tests do not have to be aware of what is happening within the grid; it
    is just waiting for an HTTP response to come back.
</li>
</ul>
<p>
    <a href="diagrams/Selenium%20Grid%20Setup.png" title="Click for larger image">
        <img src="diagrams/Selenium%20Grid%20Setup%20-%20Small.png" alt=""/></a>
</p><p>
    Of course to really take advantage of the Selenium Grid, you need to run
    your tests in parallel. If you are writing your Selenium tests in Java,
    you can leverage
    <a href="http://testng.org/doc/documentation-main.html#parallel-running">TestNG parallel runs</a>
    or <a href="https://parallel-junit.dev.java.net/">Parallel JUnit</a>.
    If you prefer to write your Selenium tests in Ruby, you might want to
    look into <a href="http://deep-test.rubyforge.org/">DeepTest</a>
    or spawn multiple processes. Chances are that your favorite
    programming language and development platform already have a solution.
</p>

<h2 id="requesting-a-specific-environment">Requesting a Specific Environment</h2>
<p>
    A traditional Selenium test requests a specific browser at the beginning
    of every Selenium session. It requests it in the form of a pre-defined
    string such as <code>*firefox</code> or <code>*iexplore</code>.
    Nevertheless a test cannot request more fine grained capabilities such
    as Firefox on Linux or IE 6.0 on Windows XP SP2. The underlying
    assumption is that you are targeting a single Remote Control, so you
    should be aware if it runs on Windows XP or not.
</p><p>
    If you want, you can operate a Selenium Grid in the exact same way. It
    might very well be all that you need. However the more heterogeneous your
    grid becomes, the more you will want to make sure that a specific build
    runs on Firefox on Windows and only on Firefox on Windows. This makes
    troubleshooting test failures considerably easier. It might also be that
    you have a handful of tests that are specifically targeting this nasty
    bug for this particular browser on this particular platform.
</p><p>
    Either way, you can make a Selenium Grid aware of the environments you
    care about. The Selenium Hub will then ensure that a test runs only on
    the Selenium Remote Controls providing the requested environment.
</p><p>
    <a href="diagrams/Requesting%20a%20Specific%20Environment.png" title="Click for larger image">
        <img src="diagrams/Requesting%20a%20Specific%20Environment%20-%20Small.png" alt=""/></a>
</p><p>
    The way it works is that Selenium Grid instruments the traditional
    Selenium Remote Controls so that they register themselves to the Hub when
    they start. When they do so they can also describe which environment they
    are providing, suppose Firefox on Windows.
</p>
<p>
    At this point, if you want to target a test to a specific environment,
    all you have to do is to substitute the traditional browser string (say
    <code>*firefox</code>) with the name of the environment (say
    <code>Firefox on Windows</code>). If you write your test in Java change:
</p>
<p><code>new DefaultSelenium("localhost", 4444, **'*firefox'**, 'http://amazon.com');</code></p>
<p>into:</p>
<p><code>new DefaultSelenium("localhost", 4444, **'Firefox on Windows'**, 'http://amazon.com');</code></p>
<p>That will do the trick. </p>
<p>
    It is important to note that the names of the environments are completely
    arbitrary. <em>You</em> are in control and can choose the ones that make
    sense for you. You are also not restricted to the browser / platform
    paradigm. You can define environments such as &#8220;IE 7 on Chinese
    locale&#8221; or &#8220;Firefox on Quadri-processor&#8221; if that makes
    sense in your testing environment.
</p><p>

    To define you own environments, edit the
    <code>grid_configuration.yml</code> file at the root of the Selenium Grid
    binary distribution.
</p>

</div>
</body>
</html>
