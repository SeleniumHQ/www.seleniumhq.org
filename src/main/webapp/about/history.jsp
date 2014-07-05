<!DOCTYPE html>
<html>
<head>
  <meta name="generator" content=
  "HTML Tidy (version num removed), see www.w3.org">

  <title>Selenium History</title>
<%@include file="/jsp/head.jspf"%>
</head>

<body class="sectionAbout">
<%@include file="/jsp/header.jspf"%><div id="mainContent">
  <h2>Selenium History</h2>

  <p>See also: <a href="contributors.html">Selenium
  Contributors</a></p>

  <p>The story starts in 2004 at <a href=
  "http://www.thoughtworks.com/">ThoughtWorks</a> in Chicago, with
  <a href="http://www.jrandolph.com/blog/">Jason Huggins</a>
  building the Core mode as "JavaScriptTestRunner" for the testing
  of an internal Time and Expenses application (Python, Plone).
  Automatic testing of any applications is core to ThoughtWork's
  style, given the Agile leanings of this consultancy. He has help
  from <a href="http://www.pgrs.net">Paul Gross</a> and Jie Tina Wang. For them, this was a day
  job.</p>

  <p>Jason started demoing the test tool to various colleagues.
  Many were excited about its immediate and intuitive visual
  feedback, as well as its potential to grow as a reusable testing
  framework for other web applications.</p>

  <p>Soon after in 2004 fellow ThoughtWorker <a href=
  "http://paulhammant.com/">Paul Hammant</a> saw the demo, and
  started discussions about the open sourcing of Selenium, as well
  as defining a 'driven' mode of Selenium where you'd get to use
  Selenium over the wire from a language of your choice, that would
  get around the 'same origin policy'. &nbsp; Another (then)
  colleague, <a href="http://aslakhellesoy.com/">Aslak
  Hellesoy</a>, experimented with different ideas for the 'server'
  piece, including page rewriting to get around the same origin
  policy. Paul wrote the original server piece in Java, and Aslak
  and <a href="http://obiefernandez.com/">Obie Fernandez</a> ported
  that the client driver to Ruby, setting the foundation for
  drivers in yet more languages.</p>

  <p>ThoughtWorkers in various offices around the world picked up
  Selenium for commercial projects, and contributed back to
  Selenium from the lessons learned on these projects. Mike
  Williams, <a href="http://www.linkedin.com/pub/0/896/b41">Darrell
  Deboer</a>, and <a href=
  "http://www.linkedin.com/pub/0/465/293">Darren Cotterill</a> all
  helped with the increasing the capabilities and the robustness of
  it.</p>

  <h3>Meanwhile, outside of ThoughtWorks...</h3>

  <p>At <a href="http://www.bea.com">Bea</a>, <a href=
  "http://www.linkedin.com/pub/1/3B2/569">Dan Fabulich</a> and
  <a href="http://www.linkedin.com/pub/1/250/72B">Nelson Sproul</a>
  came to the conclusion that the driver/server to browser
  architecture was not the most useful or flexible, so forked the
  driver coder and crafted that into a standalone server that
  leveraged and bundled MortBay's Jetty as a web-proxy. When the
  code was merged back it became known as "Selenium Remote Control"
  and the old driven codeline and capability was retired.</p>

  <p><a href="http://lightbody.net/blog/">Pat Lightbody</a> became
  involved at the same time, with a commercial idea that required
  him to quit his day job (Jive Software). The idea was "Hosted
  QA", and it was eventually moved into <a href=
  "http://www.gomez.com/">Gomez's</a> service line. Pat worked with
  Dan and Nelson making Selenium RC stable for large scale
  deployment. Pat had privately coded a grid for Hosted QA that
  took screenshots of browsers in various states, and was looking
  after multiple customers concurrently. Jason had the same hosted
  QA idea a year before, but did not quit his day job to do it.</p>

  <p>In 2007 Dan moved to the rapidly growing <a href=
  "http://www.redfin.com">Redfin</a>, which also part-time sponsors
  his time on Selenium, and encourages a speaking agenda.</p>

  <h3>Selenium-IDE: Made in Japan</h3>

  <p><a href="http://www.linkedin.com/pub/4/488/702">Shinya
  Kasatani</a> in Japan became interested in Selenium, and realised
  that he could wrap the core code into an IDE module into the
  Firefox browser, and be able to record tests as well as play them
  back in the same plugin. &nbsp;This tool, turned out an eye
  opener in more ways that was originally thought as it is not
  bound to the same origin policy.</p>

  <p>Mike Williams got involved again in the Summer of 2006 where
  he led a team from ThoughWorks China, primarily Wang Peng Chao,
  Huang Liang and Xiong Jie but with the help of others. They
  worked on improving Selenium Core with the goal of getting it
  closer to 1.0</p>

  <h3>Google Too!</h3>

  <p>Jason Huggins left Thoughtworks in 2007 and joined the (then
  secret) Selenium support team inside Google.</p>

  <p>Jennifer Bevan (and other unnamed Googlers) had coded their
  own grid capabilty for Selenium RC, and deployed it internally
  for the testing of multiple public web applications. Google
  hosted a <a href=
  "http://googletesting.blogspot.com/2007/03/2nd-annual-google-test-automation.html">
  GTAC</a> conference in New York and talked about their use of
  Selenium for the first time. Jennifer soon became a committer on
  the Selenium projects.</p>

  <p><a href=
  "http://www.facebook.com/people/Haw-Bin_Chai/4102476">Haw-bin
  Chai</a> in Chicago provided patches for XPath functionality and
  developed an extension called "UI Element" that makes the grammar
  of locators much simpler. &nbsp;He was invited into the Selenium
  development team in 2007.</p>

  <p>Simon Stewart at ThoughtWorks had been working on a different
  web testing tool called WebDriver. It did not rely on JavaScript
  to do the heavy lifting, but instead had a client for each
  browser that was coded from scratch. It also had a 'higher level'
  API than Selenium-RC and showed lots of promise. Simon presented
  the tool at GTAC, and started work on compatibility with
  Selenium-RC, which gave rise to the obvious conclusion that the
  two projects should merge. Simon, at Google from 2007 to 2012, and now at Facebook, gets to spend
  some of his time making that a reality.</p>

  <h3>Fallen by the wayside, never started, or not started
  yet.</h3>

  <h4>Gone</h4>

  <ul>
    <li>Paul's driven code and names "Selenium A and B" for core
    and driven. Driven as a name too, for RC.</li>

    <li>Aslak's page rewriter to get around the same origin
    policy</li>

    <li>Jason's twisted capabilty for giving Selenium core more
    client/server capabiity</li>
  </ul>

  <h4>Never started</h4>

  <ul>
    <li>Paul's Squid-proxy plugin (C++), RC server negates the need
    for it.</li>
  </ul>
<%@include file="/jsp/footer.jspf"%>
</body>
</html>
