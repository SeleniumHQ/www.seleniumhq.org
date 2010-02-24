Selenium-RC
===========

.. _chapter05-cn-reference:

引言
------------
Selenium-RC 为那些稍微复杂，不仅仅是几个简单的浏览器动作和线性执行的测试提供了解决方案。
Selenium-RC 发挥了所有编程语言的优势，可以创建的各种测试，比如：读写外部文件，查询数据库，通过邮件发送报告，以及用户通过应用程序可以做的其它几乎任何事。

当Selenium-IDE 的测试脚本不能满足你的测试需求的时候你会想使用Selenium-RC. 
比如Selenium-IDE不直接支持以下功能:

* 条件语句
* 迭代 
* 测试日志以及测试结果报告
* 错误处理，尤其是意外的错误
* 数据库测试
* 测试用例归类
* 重复执行失败用例
* 测试用例依赖关系
* 测试失败时候截取屏幕图像

尽管Selenium-RC没有直接支持以上所有功能，但是它们可以通过常用的编程技术及其类库来实现。

.. 注:: 尽管使用Selenium-IDE的附加的user extensions 可能可以实现这些测试任务，但是大部分人选择使用Selenium-RC.  因为当面临复杂的测试时候Selenium-RC比Selenium-IDE更加灵活，更强的可扩展性。


在 `给你的测试添加些趣味`_ 章节, 会有一些例子很好的证明了用编程语言写测试脚本的优势。

工作原理
------------
以下介绍的是Selenium-RC 里面各个组件以及其工作原理

RC 组件
~~~~~~~~~~~~~
Selenium-RC 由两部分组成:

* 负责启动和终止浏览器的Selenium 服务器，同时也充当浏览器请求的 *HTTP* 代理。 
* 各种编程语言的客户端类库，通过传递Selenium命令，客户端就可以驱动Selenium
Server对AUT进行测试。

以下是一个简单的构架图......

.. image:: ../images/chapt5_img01_Architecture_Diagram_Simple.png
   :align: center

这个图表展示了客户端类库以传递每个要执行的Selenium命令的方式与Selenium服务器进行通信。
然后Selenium 服务器把Selenium命令转化为Selenium-Core JavaScript命令传递给浏览器。 
浏览器用它自己的JavaScript 解析器，执行Selenium 命令, 有效地运行Selenese测试脚本。

Selenium 服务器
~~~~~~~~~~~~~~~
Selenium 服务器从测试程序接收并解析Selenium 命令，然后返回一个测试结果给测试程序。

Selenium 服务器绑定了Selenium Core, 并且当测试程序使用客户端API启动浏览器的时候，
Selenium Core被自动注入到浏览器里。Selenium-Core 是一个JavaScript程序, 实际上就是一套 JavaScript
功能函数, 它使用浏览器内置的JavaScript解析器来解析和执行Selenese命令。

Selenium 服务器用简单的HTTP GET/POST请求的方式从测试程序接收Selenese命令。
这就意味着你可以通过任何支持发送HTTP请求的编程语言来驱动Selenium测试。

客户端类库
~~~~~~~~~~~~~~~~
Selenium-RC支持多种编程语言，为每种不同的编程语言提供了一个不同的客户端类库，
允许用户使用各自喜好的编程语言来编写和运行Selenium命令。
每个客户端类库都是一个程序接口，也可以说是一组在程序里运行Selenium命令的函数。而这些函数和Selenium命令一一对应。

客户端类库通过发送一条Selenese 命令到Selenium 服务器来对AUT进行一个特定操作或者测试。
客户端类库也会收到命令运行结果，然后返回给你的测试程序。你的测试程序可以收到这个测试结果，然后报告成功与否，
或者采取错误处理操作如果返回的是一个意外错误信息。 

因此你可以用客户端类库的API编写一些简单的Selenium命令来创建测试程序。
或者，如果你已经有了在Selenium-IDE里创建的Selenese命令，Selenium-IDE可以通过使用Export菜单选项转换成Selenium RC代码。

.. Paul: I added the above text after this comment below was made.  
   The table suggested below may still be helpful.  We can evaluate that later.

.. TODO: Mary Ann pointed out this and I think is very important:
   Info about the individual language APIs for RC being "wrappers" for the
   Selenese commands covered in the chapter.  We need to make clear that
   everyone needs to understand Selenese, but that in order to write a
   Perl/Selenium test (for example), one must also familiarize oneself
   with the Perl/Selenium API.  I recommend that we have a completed
   version of the sketched table below, only with parameter lists added
   for all command cells (including the first row):

.. Selenese    type    click    verifyTextPresent    assertAlert
   Java
   Perl
   C#
   Python
   PHP
   etc.

安装
-------------
从 `下载页面`_ 下载Selenium-RC zip文件后，你会注意到它包含一些子目录，
这些目录包含了在所有支持的编程语言运行Selenium-RC所需的组件。

你只要选中一种编程语言，然后

* 安装Selenium-RC Server.
* 用特定语言的客户端类库建立一个程序工程。

安装 Selenium 服务器
~~~~~~~~~~~~~~~~~~~~~~~~~~
Selenium 服务器只是一个jar包 (*selenium-server.jar*), 其实根本不需要安装。
只要下载并解压，然后放在你想放的目录就足够了。
当你写完一些测试脚本之后，你只要进入到Selenium 服务器所在目录下面，在控制台上执行
以下命令::

    java -jar selenium-server.jar

可能大多数人想要更加快捷的方式。
这个可以通过创建一个包含以上命令的可执行文件（Windows下面的.bat文件或者Linux下面的.sh文件）。
然后在你的桌面创建一个快捷方式。那么你就可以在任意时候双击快捷方式启动Selenium 服务器，开始你的测试。


.. 注:: 启动Selenium 服务器要求你的电脑必须事先安装好Java,并设置好PATH环境变量。
   你可以在控制台输入以下命令来确认Java是否安装正确::

       java -version

   如果你得到一个版本号（必须1.5或以上），那么你可以开始使用Selenium-RC了。

.. _`下载页面`: http://seleniumhq.org/download/
.. _`NUnit`: http://www.nunit.org/index.php?p=download

Java 客户端驱动配置
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* 从SeleniumHQ `downloads page`_ 下载Selenium-RC  
* 解压提取 *selenium-java-client-driver.jar* 文件
* 打开你的Java IDE (Eclipse, NetBeans, IntelliJ, Netweaver, 等等.)
* 创建一个新的工程
* 把文件 *selenium-java-client-driver.jar* 加到工程的classpath里。
* 从Selenium-IDE, 导出一个java文件，然后加到你的Java工程中去。或者用Java调用selenium-java-client API来写你自己的Selenium 测试脚本。
* 从控制台启动 Selenium 服务器
* 在Java IDE里执行测试

具体的Java 测试工程配置，请参看附录
:ref:`用Eclipse配置Selenium-RC<configuring-selenium-RC-eclipse-reference>` 
和
:ref:`用Intellij配置Selenium-RC<configuring-selenium-RC-Intellij-reference>`.

Python 客户端驱动配置
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* 从SeleniumHQ `downloads page`_ 下载Selenium-RC  
* 解压提取 *selenium.py* 文件
* 用Python直接写测试脚本或者从Selenium-IDE导出 python文件。
* 把 *selenium.py* 文件加到你测试脚本路径
* 从控制台启动 Selenium 服务器
* 从控制台或者Python IDE执行测试。

具体的Java 客户端驱动配置，请参看附录
:ref:`Python Client Driver Configuration <configuring-selenium-RC-python-reference>`.

.NET 客户端驱动配
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* 从SeleniumHQ `downloads page`_ 下载Selenium-RC  
* 解压缩
* 下载安装 `NUnit`_ （
  注: 你可以把NUnit当作你的测试引擎.  如果你不熟悉NUnit，你可以编写简单的main() 函数来运行测试； 
  不过NUnit 是一个非常不错的测试引擎。）
* 打开你的.Net IDE (Visual Studio, SharpDevelop, MonoDevelop)
* 创建一个动态链接库文件 (.dll)
* 加载以下动态链接库文件: nmock.dll, nunit.core.dll, nunit.
  framework.dll, ThoughtWorks.Selenium.Core.dll, ThoughtWorks.Selenium.
  IntegrationTests.dll and ThoughtWorks.Selenium.UnitTests.dll
* 使用.Net语言 (C#, VB.Net)编写Selenium测试，或者从Selenium-IDE 导出C#文件，然后拷贝代码到刚才创建的动态链接库文件里。
* 从控制台启动 Selenium 服务器
* 从NUnit GUI 或者 NUnit 命令行执行测试。

具体的在Visual Studio里 .NET 客户端驱动配置，请参看附录
:ref:`.NET client driver configuration <configuring-selenium-RC-NET-reference>`. 

从Selenese 到 测试程序
--------------------------
使用Selenium-RC的最重要一步是把Selenese转化为程序代码.  
这同时也是理解Selenium-RC本身的重要一步，尽管同样的Selenese 脚本，在不同的编程语言下显示不同。 
在这个章节，我们会提供一些基于不同语言的例子。

测试脚本实例
~~~~~~~~~~~~~~~~~~
首先，让我们从一个Selenese测试脚本例子开始，假设用Selenium-IDE录制了以下Selenese脚本.

.. _Google 搜索例子:

=================  =========================  ===========
open               /
type               q                          selenium rc
clickAndWait       btnG
assertTextPresent  Results * for selenium rc
=================  =========================  ===========

.. note:: 这个例子可以从Google search 页面 http://www.google.com 录制到

Selenese 程序代码
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
下面是通过Selenium-IDE导出的各种编程编程语言的测试脚本. 如果你有面向对象编程语言的基础知识，你查看下面其中一个例子应该就可以理解Selenium是如何由编程语言运行Selenese命令的。点击下面其中一个按钮，查看对应语言的例子。

.. container:: toggled

   .. code-block:: c#

        using System;
        using System.Text;
        using System.Text.RegularExpressions;
        using System.Threading;
        using NUnit.Framework;
        using Selenium;

        namespace SeleniumTests
        {
            [TestFixture]
            public class NewTest
            {
                private ISelenium selenium;
                private StringBuilder verificationErrors;
                
                [SetUp]
                public void SetupTest()
                {
                    selenium = new DefaultSelenium("localhost", 4444, "*firefox", "http://www.google.com/");
                    selenium.Start();
                    verificationErrors = new StringBuilder();
                }
                
                [TearDown]
                public void TeardownTest()
                {
                    try
                    {
                        selenium.Stop();
                    }
                    catch (Exception)
                    {
                        // Ignore errors if unable to close the browser
                    }
                    Assert.AreEqual("", verificationErrors.ToString());
                }
                
                [Test]
                public void TheNewTest()
                {
                    selenium.Open("/");
                    selenium.Type("q", "selenium rc");
                    selenium.Click("btnG");
                    selenium.WaitForPageToLoad("30000");
                    Assert.IsTrue(selenium.IsTextPresent("Results * for selenium rc"));
                }
            }
        }

.. container:: toggled

   .. code-block:: java

      package com.example.tests;

      import com.thoughtworks.selenium.*;
      import java.util.regex.Pattern;

      public class NewTest extends SeleneseTestCase {
          public void setUp() throws Exception {
              setUp("http://www.google.com/", "*firefox");
          }
            public void testNew() throws Exception {
                selenium.open("/");
                selenium.type("q", "selenium rc");
                selenium.click("btnG");
                selenium.waitForPageToLoad("30000");
                assertTrue(selenium.isTextPresent("Results * for selenium rc"));
          }
      }

.. container:: toggled

   .. code-block:: perl

      use strict;
      use warnings;
      use Time::HiRes qw(sleep);
      use Test::WWW::Selenium;
      use Test::More "no_plan";
      use Test::Exception;

      my $sel = Test::WWW::Selenium->new( host => "localhost", 
                                          port => 4444, 
                                          browser => "*firefox", 
                                          browser_url => "http://www.google.com/" );

      $sel->open_ok("/");
      $sel->type_ok("q", "selenium rc");
      $sel->click_ok("btnG");
      $sel->wait_for_page_to_load_ok("30000");
      $sel->is_text_present_ok("Results * for selenium rc");

.. container:: toggled

   .. code-block:: php

      <?php

      require_once 'PHPUnit/Extensions/SeleniumTestCase.php';

      class Example extends PHPUnit_Extensions_SeleniumTestCase
      {
        function setUp()
        {
          $this->setBrowser("*firefox");
          $this->setBrowserUrl("http://www.google.com/");
        }

        function testMyTestCase()
        {
          $this->open("/");
          $this->type("q", "selenium rc");
          $this->click("btnG");
          $this->waitForPageToLoad("30000");
          $this->assertTrue($this->isTextPresent("Results * for selenium rc"));
        }
      }
      ?>

.. container:: toggled

   .. code-block:: python

      from selenium import selenium
      import unittest, time, re

      class NewTest(unittest.TestCase):
          def setUp(self):
              self.verificationErrors = []
              self.selenium = selenium("localhost", 4444, "*firefox",
                      "http://www.google.com/")
              self.selenium.start()
         
          def test_new(self):
              sel = self.selenium
              sel.open("/")
              sel.type("q", "selenium rc")
              sel.click("btnG")
              sel.wait_for_page_to_load("30000")
              self.failUnless(sel.is_text_present("Results * for selenium rc"))
         
          def tearDown(self):
              self.selenium.stop()
              self.assertEqual([], self.verificationErrors)

.. container:: toggled

   .. code-block:: ruby

      require "selenium"
      require "test/unit"

      class NewTest < Test::Unit::TestCase
        def setup
          @verification_errors = []
          if $selenium
            @selenium = $selenium
          else
            @selenium = Selenium::SeleniumDriver.new("localhost", 4444, "*firefox", "http://www.google.com/", 10000);
            @selenium.start
          end
          @selenium.set_context("test_new")
        end

        def teardown
          @selenium.stop unless $selenium
          assert_equal [], @verification_errors
        end

        def test_new
          @selenium.open "/"
          @selenium.type "q", "selenium rc"
          @selenium.click "btnG"
          @selenium.wait_for_page_to_load "30000"
          assert @selenium.is_text_present("Results * for selenium rc")
        end
      end

在接下来的章节，我们来解释怎么用上面生成的代码来创建一个测试程序。

编写测试代码
---------------------
现在，我们将展示所有支持的语言的详细例子。主要有两个步骤，第一，从Selenium-IDE把脚本转化成一种程序语言,也可以对生成的代码略加修改。第二，写一个最简单的main 函数来运行刚才生成的代码。或者，你可以采用一个测试引擎平台比如Java里的JUnit,TestNG, .Net里的NUnit。

这里我们展示特定语言的例子。因为特定语言的API可能互不相同，所以你会发现每种语言各自的解释。

* `C#`_
* Java_
* Perl_
* PHP_ 
* Python_
* Ruby_ 

C#
~~

.NET 客户端驱动在Microsoft.NET环境下运行。
它可以和任何 .NET 测试框架，比如NUnit 或者Visual Studio 2005 一起使用。

你可以从转化来的代码里发现，Selenium-IDE 自动默认你将使用NUnit 作为你的测试框架。
代码里包含了*using* 语句来调用NUnit框架，同时使用NUnit的相关属性为每个成员函数标明各自的作用。  

注意，你可能需要把测试类名从"NewTest" 改为你想要的名称。而且，可能需要在以下语句里修改要打开的浏览器的参数::

    selenium = new DefaultSelenium("localhost", 4444, "*iehta", "http://www.google.com/");

生成的代码可能与下面的类似。

.. code-block:: c#

    using System;
    using System.Text;
    using System.Text.RegularExpressions;
    using System.Threading;
    using NUnit.Framework;
    using Selenium;
    
    namespace SeleniumTests

    {
        [TestFixture]

        public class NewTest

        {
        private ISelenium selenium;

        private StringBuilder verificationErrors;

        [SetUp]

        public void SetupTest()

        {
            selenium = new DefaultSelenium("localhost", 4444, "*iehta",
            "http://www.google.com/");

            selenium.Start();

            verificationErrors = new StringBuilder();
        }

        [TearDown]

        public void TeardownTest()
        {
            try
            {
            selenium.Stop();
            }

            catch (Exception)
            {
            // Ignore errors if unable to close the browser
            }

            Assert.AreEqual("", verificationErrors.ToString());
        }
        [Test]

        public void TheNewTest()
        {
            // Open Google search engine.        
            selenium.Open("http://www.google.com/"); 
            
            // Assert Title of page.
            Assert.AreEqual("Google", selenium.GetTitle());
            
            // Provide search term as "Selenium OpenQA"
            selenium.Type("q", "Selenium OpenQA");
            
            // Read the keyed search term and assert it.
            Assert.AreEqual("Selenium OpenQA", selenium.GetValue("q"));
            
            // Click on Search button.
            selenium.Click("btnG");
            
            // Wait for page to load.
            selenium.WaitForPageToLoad("5000");
            
            // Assert that "www.openqa.org" is available in search results.
            Assert.IsTrue(selenium.IsTextPresent("www.openqa.org"));
            
            // Assert that page title is - "Selenium OpenQA - Google Search"
            Assert.AreEqual("Selenium OpenQA - Google Search", 
                         selenium.GetTitle());
        }
        }
    }


主程序非常简单。你可以用NUnit来管理测试的执行。或者你可以写一个简单的main()函数来实例化这个测试对象，然后轮流调用SetupTest(), 
TheNewTest(), 和TeardownTest() 这三个函数。

    
Java
~~~~
在Java里, 很多人用JUnit运行测试. 用JUnit来管理运行测试可以帮助你省去很多代码。
很多开发环境比如Eclipse都通过插件直接支持JUnit。如何使用JUnit不包含在本文档内，但是你可以在线找到很多相关资料。 
如果你已经有一个java团队，那么你的开发员会有JUnit的经验。

你可能会想把测试类名“NewTest”重新命名成你想要的名称。同时需要修改打开浏览器参数的语句::

    selenium = new DefaultSelenium("localhost", 4444, "*iehta", "http://www.google.com/");

Selenium-IDE 生成的代码和下面的相似。为了更加明确一点，这个例子上已经手工加了注释上去。

.. _wrapper: http://release.seleniumhq.org/selenium-remote-control/1.0-beta-2/doc/java/com/thoughtworks/selenium/SeleneseTestCase.html

.. code-block:: java

   package com.example.tests;
   // We specify the package of our tess

   import com.thoughtworks.selenium.*;
   // This is the driver's import. You'll use this for instantiating a
   // browser and making it do what you need.

   import java.util.regex.Pattern;
   // Selenium-IDE add the Pattern module because it's sometimes used for 
   // regex validations. You can remove the module if it's not used in your 
   // script.

   public class NewTest extends SeleneseTestCase {
   // We create our Selenium test case

         public void setUp() throws Exception {
           setUp("http://www.google.com/", "*firefox");
                // We instantiate and start the browser
         }

         public void testNew() throws Exception {
              selenium.open("/");
              selenium.type("q", "selenium rc");
              selenium.click("btnG");
              selenium.waitForPageToLoad("30000");
              assertTrue(selenium.isTextPresent("Results * for selenium rc"));
              // These are the real test steps
        }
   }

Perl
~~~~

*Note: This section is not yet developed.*

PHP
~~~

*Note: This section is not yet developed.*

Python
~~~~~~
我们使用 pyunit 测试框架（单元测试模块）来执行测试。为了更好的理解如何写你的测试，你需要知道这个框架是如何工作的。
如过想全面了解pyunit，请阅读它的 `官方文档 <http://docs.python.org/library/unittest.html>`_ 。

基本测试脚本结构如下:

.. code-block:: python

   from selenium import selenium
   # This is the driver's import.  You'll use this class for instantiating a
   # browser and making it do what you need.

   import unittest, time, re
   # This are the basic imports added by Selenium-IDE by default.
   # You can remove the modules if they are not used in your script.

   class NewTest(unittest.TestCase):
   # We create our unittest test case

       def setUp(self):
           self.verificationErrors = []
           # This is an empty array where we will store any verification errors
           # we find in our tests

           self.selenium = selenium("localhost", 4444, "*firefox",
                   "http://www.google.com/")
           self.selenium.start()
           # We instantiate and start the browser

       def test_new(self):
           # This is the test code.  Here you should put the actions you need
           # the browser to do during your test.
            
           sel = self.selenium
           # We assign the browser to the variable "sel" (just to save us from 
           # typing "self.selenium" each time we want to call the browser).
            
           sel.open("/")
           sel.type("q", "selenium rc")
           sel.click("btnG")
           sel.wait_for_page_to_load("30000")
           self.failUnless(sel.is_text_present("Results * for selenium rc"))
           # These are the real test steps

       def tearDown(self):
           self.selenium.stop()
           # we close the browser (I'd recommend you to comment this line while
           # you are creating and debugging your tests)

           self.assertEqual([], self.verificationErrors)
           # And make the test fail if we found that any verification errors
           # were found

Ruby
~~~~

*Note: This section is not yet developed.*

学习 API
----------------
我们之前提到过每个selenium客户端类库提供一个特定语言的程序接口来支持执行你的测试程序中的Selenese命令。
Selenium-RC API 使用命名惯例，假设你熟悉你选择的编程语言，并且你现在理解Selenese，那么大部分你选定语言的接口会不解自明的。
不过我们这里会解释API的最重要的也可能是不那么显而易见的方面。


启动浏览器 
~~~~~~~~~~~~~~~~~~~~~

.. container:: toggled

   .. code-block:: c#

      selenium = new DefaultSelenium("localhost", 4444, "*firefox", "http://www.google.com/");
      selenium.Start();

.. container:: toggled

   .. code-block:: java

      setUp("http://www.google.com/", "*firefox");

.. container:: toggled

   .. code-block:: perl

      my $sel = Test::WWW::Selenium->new( host => "localhost", 
                                          port => 4444, 
                                          browser => "*firefox", 
                                          browser_url => "http://www.google.com/" );

.. container:: toggled

   .. code-block:: php

      $this->setBrowser("*firefox");
      $this->setBrowserUrl("http://www.google.com/");

.. container:: toggled

   .. code-block:: python

      self.selenium = selenium("localhost", 4444, "*firefox",
                               "http://www.google.com/")
      self.selenium.start()

.. container:: toggled

   .. code-block:: ruby

      if $selenium
        @selenium = $selenium
      else
        @selenium = Selenium::SeleniumDriver.new("localhost", 4444, "*firefox", "http://www.google.com/", 10000);
        @selenium.start

每个例子将会通过分配一个“浏览器实例”给一个程序变量来实例化一个浏览器（这个只是你代码里的一个对象）。
这个浏览器实例变量然后被用来从浏览器调用方法，例如*open* 或 *type*。

当你创建浏览器实例的时候你必须给出的一些初始参数是：

host
    这个是服务器所在地方的IP地址。大部分时间，这和运行客户端的是同一个机器，因此你可以在有些客户端看到这是一个可选的参数。
port
    和host类似，这决定了服务器监听等待客户端与其通信的Socket端口。同样, 在有些客户端驱动，这个是可选的。
browser
    你想要运行测试的浏览器。这个是必须的参数。（我希望你能理解为什么:)）
url
    待测程序的基准url。这个在所有的客户端类库里也是必须的，并且由于有些服务器的实现方式，Selenium-RC在启动浏览器之前就需要它。

注：有些语言需要明确地调用它的*start*方法来启动浏览器。

运行命令
~~~~~~~~~~~~~~~~
一旦浏览器被初始化并且赋值给一个变量（通常命名为"selenium"），你就可以从selenium 浏览器调用各自的方法来让它运行命令了。
比如你从selenium对象调用*type*方法::

    selenium.type("field-id","string to type")

在后台（由于Selenium-RC的魔力）浏览器会用locator和你在调用这个方法的时候指定的字符串，真正地*type**。
因此，总而言之，你的代码仅仅是一个普通的对象（包含方法和属性）。
后台的Selenium 服务器和内嵌到浏览器的Selenium-Core做了真的工作来测试你的应

检索和报告测试结果
--------------------------------
每种编程语言都有自己的测试框架用来运行测试。每一个都有它自己的方式来报告测试结果，并且你会找到一些第三方类库，用来专门创建不同格式的测试结果，比如HTML或者PDF格式。


**为Java客户端驱动生成测试报告:**
    

- 如果Selenium测试用例是用JUnit开发的，那么JUnit Report可以被用来生成测试报告。详细信息请参考 `JUnit Report`_ 。

.. _`JUnit Report`: http://ant.apache.org/manual/OptionalTasks/junitreport.html

- 如果Selenium测试用例是用TestNG开发的，那么不需要额外的工作就可以生成测试报告了。TestNG框架会生成一个把测试细节编列成表的HTML格式的报告。
 详细信息请参考 `TestNG Report`_ 。

.. _`TestNG Report`: http://testng.org/doc/documentation-main.html#test-results

- 同时，需要一个很不错的概要报告，可以用TestNG-xslt. 
  TestNG-xslt 报告看起来像这样的。

  .. image:: ../images/chapt5_TestNGxsltReport.png

  详细信息请参考 `TestNG-xslt`_ 。

.. _`TestNG-xslt`: http://code.google.com/p/testng-xslt/

- Logging Selenium 也可以被用来生成Java客户端驱动的报告。  
  Logging Selenium 通过扩展Java客户端驱动增加了记录日志的功能. 
  请参考 `Logging Selenium`_.
    
.. _`Logging Selenium`: http://loggingselenium.sourceforge.net/index.html

**生成Python客户端驱动的测试报告:**

- 当使用Python客户端驱动的时候，那么HTMLTestRunner可以被用来生成一个测试报告。参考 `HTMLTestRunner`_.
    
.. _`HTMLTestRunner`: http://tungwaiyip.info/software/HTMLTestRunner.html

**生成Ruby客户端驱动的测试报告:**

- 如果在Ruby里RSpec框架被用来编写Selenium测试用例，那么它的HTML报告可以被用来生成测试报告。
  详细信息请参考 `RSpec Report`_ .

.. _`RSpec Report`: http://rspec.info/documentation/tools/rake.html

给你的测试添加些趣味
-------------------------------
现在你会理解为什么你需要Selenium-RC，以及为什么你不能完全依靠Selenium-IDE. 
这里，在那些只能通过编程语言才能完成的事情上，我们会提供指导。

你会发现，当你从运行页面元素的简单测试转换到建立包含多个网页和各种数据的动态功能性测试，你会需要编程逻辑去验证期望的测试结果。
基本上，Selenium-IDE不支持迭代和条件语句。你会发现你能通过嵌入javascript到你的Selenese参数里面来做一些简单的条件语句，但是迭代是不可能的，
并且很多情况将会需要通过编程语言来完成。另外，你可能需要使用异常处理用来出错恢复。
由于这些和其他的原因我们编写了这个章节，让你知道如何利用普通的编程技术在自
动化测试中给你更大的“验证力”。

在这个章节的例子是在一种单一的编程语言下编写的--如果你有面向对象编程基础知识，你应该不会在这个章节遇到困难。

迭代
~~~~~~~~~
迭代是人们在他们的测试中需要做的最普通的事情之一。比如，你可能会想多次执行一个搜索。 或者，可能为了验证你的测试结果，你需要处理一个从数据库里返回的“一组结果”

如果我们拿我们之前用的相同的 `Google 搜索例子`_ ，检查所有出现在搜索结果里的Selenium工具不会是很疯狂的。  
这个测试可以用以下Selenese:

=================  ===========================  =============
open               /
type               q                            selenium rc
clickAndWait       btnG
assertTextPresent  Results * for selenium rc
type               q                            selenium ide
clickAndWait       btnG 
assertTextPresent  Results * for selenium ide
type               q                            selenium grid
clickAndWait       btnG 
assertTextPresent  Results * for selenium grid
=================  ===========================  =============

代码被重复三遍，运行了同样的步骤3次。没有正真的软件人员会想这样的完成它，这使得管理代码非常困难。

通过使用编程语言，我们可以在一个列表上迭代，并这样运行搜索。
**In C#:**   
   
.. code-block:: c#

   // Collection of String values.
   String[] arr = {"ide", "rc", "grid"};    
        
   // Execute For loop for each String in 'arr' array.
   foreach (String s in arr) {
       sel.open("/");
       sel.type("q", "selenium " +s);
       sel.click("btnG");
       sel.waitForPageToLoad("30000");
       assertTrue("Expected text: " +s+ " is missing on page."
       , sel.isTextPresent("Results * for selenium " + s));
    }

条件语句
~~~~~~~~~~~~~~~~~~~~
期望的元素在页面上不可用是运行Selenium测试过程中的常见问题。
比如，当运行一下行时候：

.. code-block:: java
   
   selenium.type("q", "selenium " +s);
   
如果元素 'q' 在这个页面上刚好不可用，那么一个异常会被抛出：

.. code-block:: java

   com.thoughtworks.selenium.SeleniumException: ERROR: Element q not found

这个会导致你测试中断。一些类型的测试可能想要这样。但是通常情况下，当你的测试脚本有许多随后的测试需要执行的时候，这就不是所期
望的。

一个更好的方法可能是首先确认一下这个元素是否已经真的出现，然后当它没有出现的时候选择一个替代的方法:

**In Java:**

.. code-block:: java
   
   // If element is available on page then perform type operation.
   if(selenium.isElementPresent("q")) {
       selenium.type("q", "Selenium rc");
   } else {
       Reporter.log("Element: " +q+ " is not available on page.")
   }
   
在此处 *Reporter* 是 TestNG测试框架里的API。你可以用构建Selenium测试用例的框架的API来记录异常。
这个方法的好处是能够继续执行测试，即使一些 *比较不* 重要的元素在页面中不可用。
通过仅仅使用一个简单的 *if* 条件，我们可以做一些有趣的事情。考虑一下它的潜能吧！

数据驱动测试
~~~~~~~~~~~~~~~~~~~
因此， `迭代`_ 的想法看起来酷。让我们改良它，通过允许用户编写一个外部的文本文件，从那里测试脚本可以读取输入数据，搜索和断言它的存在。

**In Python:**

.. code-block:: python

   # Collection of String values
   source = open("input_file.txt", "r")
   values = source.readlines()
   source.close()
   # Execute For loop for each String in the values array
   for search in values:
       sel.open("/")
       sel.type("q", search)
       sel.click("btnG")
       sel.waitForPageToLoad("30000")
       self.failUnless(sel.is_text_present("Results * for " + search))

为什么我们会为我们的测试，想要一个包含数据的单独文件。测试涉及到的一个重要方法是用不同的数据值各自运行同样的测试。
这被称为 *数据驱动测试*,并且是一个非常普遍的测试任务。自动化测试工具，包括Selenium, 基本上都运用它，因为这常常是构建自动化测试以支持手动测试方法的常见原因。

上面的Python脚本打开一个文本文件。这个文件里每行包含一个不同的搜索字符串。然后代码把这个保存到一个数组里，最后，它在字符串数组上迭代，并各自做搜索和断言。
虽然这是一个非常基础的你能做的例子，但是这个想法是展示有些事情用Selenium-IDE完成很困难或者不可能，用编程或者脚
本语言做却很容易。

错误处理
~~~~~~~~~~~~~~

*Note: This section is not yet developed.*

A quick note though--recognize that your programming language's exception-
handling support can be used for error handling and recovery.

.. TODO: Complete this... Not sure if the scenario that I put is the best example to use
.. Then, what if google.com is down at the moment of our tests? Even if that sounds
   completely impossible. We can create a recovery scenario for that test. We can
   make our tests to wait for a certain amount of time and try again:

.. The idea here is to use a try-catch statement to grab a really unexpected
   error.

数据库验证
~~~~~~~~~~~~~~~~~~~~~
以后你也可以用你喜欢的编程语言做数据库查询，如果你有支持数据库的功能，为什么不用他们在被测程序上做一些数据验证和恢复呢？ 
考虑注册过程的例子，注册的email地址是从数据库里取得的。
建立数据连接和从数据库取得数据的具体用例是：

**In Java:**

.. code-block:: java

   // Load Microsoft SQL Server JDBC driver.   
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
      
   // Prepare connection url.
   String url = "jdbc:sqlserver://192.168.1.180:1433;DatabaseName=TEST_DB";
   
   // Get connection to DB.
   public static Connection con = 
   DriverManager.getConnection(url, "username", "password");
   
   // Create statement object which would be used in writing DDL and DML 
   // SQL statement.
   public static Statement stmt = con.createStatement();
   
   // Send SQL SELECT statements to the database via the Statement.executeQuery
   // method which returns the requested information as rows of data in a 
   // ResultSet object.
   
   ResultSet result =  stmt.executeQuery
   ("select top 1 email_address from user_register_table");
   
   // Fetch value of "email_address" from "result" object.
   String emailaddress = result.getString("email_address");
   
   // Use the fetched value to login to application.
   selenium.type("userid", emailaddress);
   
这是一个Java里非常简单的从数据库里取回数据的例子。
一个更复杂的测试可以是验证未激活的用户是不能登录程序的。从你刚才已经看到的来看，这不会需要很多工作。
   

服务器如何工作
--------------------
.. 注释:: 这个主题尝试解释Selenium-RC背后的技术实现。对Selenium用户来说，这个不是必须要懂的，但能对理解以后你会发现的一些问题有所帮助。

为了详细地理解Selenium-RC服务器如何工作，以及为什么它使用代理注入和提高权限模式，你必须首先理解 `同源策略`_ 。
   
同源策略
~~~~~~~~~~~~~~~~~~~~~~
Selenium构架面临的主要限制是同源策略。这个安全限制被市场上每个浏览器所应用，并且它的目的是保证一个站点的内容永远不被其他站点的脚本访问。

如果这个可能的话，那么放置在你打开的任何一个站点上的一段脚本，将能够读取你银行账户的信息，如果你在其他标签页上打开了这个账户的页面。
这个也被称为XSS (跨站脚本执行).
工作在这个策略之下，Selenium-Core (和它的促使所有魔术发生的JavaScript命令)必须被放置在和被测程序相同的源。
这是Selenium-Core首先被使用和实现的方法(通过把Selenium-Core 和测试套件部署在程序服务器里面)， 
但是这个需求不是所有的项目能满足的，因此Selenium开发人员必须找到其他方法来允许测试人员用Selenium测试那些他们不可能配置他们代码的站点。

.. 注释:: 你可以在Wikipedia关于`同源策略`_ 和 XSS_ 页面上发现关于这个主题的附加信息。 

.. _同源策略: http://en.wikipedia.org/wiki/Same_origin_policy
.. _XSS: http://en.wikipedia.org/wiki/Cross-site_scripting

代理注入
~~~~~~~~~~~~~~~
第一个用来避免 `同源策略`_ 的方法是代理注入。在代理注入方式，Selenium服务器站在浏览器和被测程序之间，
充当一个客户端配置 [1]_ 的 **HTTP 代理** [2]_ 。
这样，它能够用一个虚构的URL(嵌入Selenium-Core和一组测试，并且像它们来自同源一样的传递它们)伪装整个AUT。

.. [1] 这个代理是在两者中间传递信息的第三者。这里它充当一个“网页服务器”把AUT传递给浏览器。作为一个代理，就可以伪装AUT的真实URL。
   
.. [2] 客户端浏览器（Firefox，IE，等等） 启动的时候会把localhost:4444配置为它的
HTTP代理，这就是为什么任何浏览器发送的HTTP请求会经过Selenium服务器
并且响应信息也会经过它而不是来自于真的服务器。  

这里是一个构架图表 

.. TODO: Notice: in step 5, the AUT should pass through the HTTPProxy to go to 
   the Browser....

.. image:: ../images/chapt5_img02_Architecture_Diagram_1.png
   :align: center

当一组测试在你喜欢的语言里开始运行的时候将会发生以下的事情：

1. 客户端/驱动和selenium-RC服务器建立一个连接。
2. Selenium-RC服务器启动一个浏览器（或重用一个旧的），打开一个URL来加载Selenium-Core到网页里。
3. Selenium-Core从客户端/驱动取得第一条指令（通过发送到Selenium-RC服务器的另外一个HTTP请求）。
4. Selenium-Core遵照第一条指令作出动作，通常是打开AUT的一个页面。
5. 浏览器收到打开的请求，向Selenium-RC服务器（设置为HTTP代理供浏览器使用）请求网站的内容。
6. Selenium-RC服务器与页面服务器通信并且请求页面，一旦它收到页面，它就把页面发送给浏览器，并假装页面来至于和Selenium-Core相同的服务器。（这就允许 
   Selenium-Core 遵守同源策略).
7. 浏览器接受网页并且显示在预留的框架/窗口。
   

提高特权的浏览器
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
这个方法的工作流程和代理注入非常相似，但是最主要的区别是浏览器工作在一个叫 *提高特权* 的特殊模式下，这允许网站做一些通常不被允许的事情。
（比如运行 XSS_ ， 或者填写文件上传输入框，和一些对Selenium非常有用的东西。）
通过使用这些浏览器模式，Selenium Core 可以直接打开AUT并且读取它的内容或者和它的内容交互，而不必把整个AUT 传过Selenium-RC服务器。

这里是构架图表。

.. image:: ../images/chapt5_img02_Architecture_Diagram_2.png
   :align: center

当一组测试在你喜欢的语言里开始运行的时候将会发生以下的事情：

1. 客户端/驱动和selenium-RC服务器建立一个连接。
2. Selenium-RC服务器启动一个浏览器（或重用一个旧的），打开一个URL来加载Selenium-Core到网页里。
3. Selenium-Core从客户端/驱动取得第一条指令（通过发送到Selenium-RC服务器的另外一个HTTP请求）。
4. Selenium-Core遵照第一条指令作出动作，通常是打开AUT的一个页面。
5. 浏览器接受打开请求，并向网页服务器请求页面。一旦浏览器接收到页面，就把它显示在预留的框架/窗口里。
   
处理HTTPS和安全性弹出窗口
----------------------------------
很多应用程序当需要发送加密信息比如密码或者信用卡信息的时候，它们从HTTP转向HTTPS. 
这个技术在现今的网页应用程序中非常普遍。Selenium-RC 同样支持这个技术。 
为了保证HTTPS站点是真实的，浏览器将需要一个安全证书。
否则当浏览器用HTTPS访问AUT时候，它会假设这个应用程序不是"被信任的"。
这个时候，浏览器显示一个安全性问题弹出窗口，而Selenium-RC关闭不了这些弹出窗口。

当你在Selenium-RC 测试当中处理HTTPS时候，你必须使用支持并且能够处理安全证书的运行模式。
你可以在你测试程序初始化Selenium的时候指定运行模式。

在Selenium-RC 1.0 beta 2 和以后， 使用 \*firefox 或者 \*iexplore 运行模式。
在较早版本，包括Selenium-RC 1.0 beta 1, 使用 \*chrome 或者
\*iehta 运行模式.使用这些模式，你将不需要安装任何特殊的安全证书；Selenium-RC会帮你处理。

在1.0版本，推荐使用运行模式 \*firefox 或者 \*iexplore  
但是，也有一些额外的运行模式，比如\*iexploreproxy 和\*firefoxproxy。
这些只是为了向下集成，除非是遗留的测试程序需要，否则不应该使用。
使用它们会使安全证书处理和运行多窗口（如果你的程序打开了额外的浏览器窗口）受限制。

在Selenium-RC的较早版本，\*chrome 或者 \*iehta 是支持 HTTP和处理安全证书弹出窗口的运行模式。
它们当时被认为是‘experimental模式，尽管它们已经变得非常稳定并且很多人使用了它们。
如果你正在使用Selenium 1.0，那么你不需要也不应该这些旧的运行模式。

安全证书解释
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
通常，你可以安装一个你已经拥有的安全证书， 这样浏览器会信任你所测试的应用程序。
你可以在浏览器选项或者Internet属性里检查它（如果你不知道AUT的安全证书，请问你的系统管理员）。
当Selenium 加载你的浏览器的时候，它通过注入代码来截取浏览器和服务器之间的消息。浏览器现在认为不被信任的软件正在尝试伪装成你的应用程序。
它作出反应，通过弹出小心来警告你。
.. Please, can someone verify that I explained certificates correctly?—this is 
   an area I'm not certain I understand well yet. 

为了应对这个，Selenium-RC(仍然是当使用一个支持这个的运行模式的时候)会临时地安装自己拥有的安全证书到你客户端机器的一个地方，
那里你的浏览器可以访问到。
这个欺骗浏览器认为它正在访问一个和你AUT不同的站点，并且有效的抑制了弹出窗口。
另外一个在老一点版本里使用的方法是安装 Selenium 安装文件里提供的Cybervillians 安全证书。
大部分用户应该不再需要做这个，但是，如果你的Selenium-RC运行在代理注入模式，你可能需要明确地安装这个安全证书。

   
服务器选项
--------------
当服务被启动的时候，命令行选项可以被用来改变服务器默认行为。

运行一下命令启动服务器。
.. code-block:: bash
 
   $ java -jar selenium-server.jar

运行服务器加 ``-h`` 选项来查看选项列表。

.. code-block:: bash
 
   $ java -jar selenium-server.jar -h

你会看到一个列表包含所有你可以使用的选项以及每个选项的简单的描述。
提供的描述不尽详细，因此我们为一些重要的选项提供了解释。

代理配置
~~~~~~~~~~~~~~~~~~~
如果你使用了HTTP代理并需要验证信息，那么你需要配置http.proxyHost, http.proxyPort, http.proxyUser和http.proxyPassword
如下：
.. code-block:: bash

   $ java -jar selenium-server.jar -Dhttp.proxyHost=proxy.com -Dhttp.proxyPort=8080 -Dhttp.proxyUser=username -Dhttp.proxyPassword=password


多窗口模式
~~~~~~~~~~~~~~~~~
如果你在使用Selenium 1.0你可以略过这个章节，因为multiwindow模式是默认的。
但是1.0之前的版本, Selenium默认如下图所示，在一个子框架里面运行被测试程序.

.. image:: images/chapt5_img26_single_window_mode.png
   :class: align-center


一些应用程序不能正确是运行在一个子框架里，必须被加载在窗口的顶端框架。
多窗口模式允许AUT运行在一个分开的窗口的顶端框架而不是默认的框架。

.. image:: images/chapt5_img27_multi_window_mode.png
   :class: align-center

那些较早的Selenium版本，你必须按照以下选项明确地指定multiwindow模式：

.. code-block:: bash

   -multiwindow 

在Selenium-RC 1.0, 如果你想你的测试运行在单一的框架里(也就是说，使用Selenium较早版本的标准) 
你可以启动Selenium服务器加以下选项

.. code-block:: bash
 
   -singlewindow 

指定Firefox 配置信息
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. TODO: Better describe how Selenium handles Firefox profiles (it creates,
   uses and then deletes sandbox profiles unless you specify special ones)
   
Firefox 不会同时运行两个实例除非你为每个实例指定一个单独的的配置。
Selenium-RC 1.0和以后的版本会自动运行在单独的配置下，因此如果你在用Selenium 1.0，你可能可以略过这个章节。
但是，如果你在用一个较早的Selenium版本，你的测试需要使用一个特定的配置（比如增加一个HTTPS证书或者安装一些扩展），你需要明确的指定配置。

首先，按照以下过程，创建一个单独的Firefox配置。
打开Windows开始菜单，选择"Run"，然后输入下面其中一个命令然后回车:

.. code-block:: bash

   firefox.exe -profilemanager 

.. code-block:: bash

   firefox.exe -P 

根据对话窗口创建新的配置。然后运行Selenium服务器，告诉它使用这个新的Firefox配置信息，通过附加服务器命令行选项
*\-firefoxProfileTemplate* 并用它的文件名和目录路径来指定这个配置信息的路径。

.. code-block:: bash

   -firefoxProfileTemplate "配置路径" 

.. 警告:: 确保你的配置放在不同于默认的新文件夹里。 
   如果你删除一个配置，Firefox 配置管理工具会删除一个文件夹里的所有文件，不管他们是不是配置文件。 
   
更多关于Firefox配置的信息，请参考`Mozilla's Knowledge Base`_

.. _Mozilla's KNowledge Base: http://support.mozilla.com/zh-CN/kb/Managing+profiles

.. _html-suite:

用-htmlSuite直接在服务器里运行Selenese
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
你可以通过传递 HTML文件到服务器命令行，在Selenium服务器直接运行Selense。
比如::

   java -jar selenium-server.jar -htmlSuite "*firefox" "http://www.google.com" "c:\absolute\path\to\my\HTMLSuite.html" "c:\absolute\path\to\my\results.html"

这个会自动启动你的HTML套件，运行所有测试并保存一个非常漂亮的包含测试结果的HTML报告。

.. 注释:: 当使用这个选项时候，服务器会开始测试并等待指定时间来让测试完成。
   如果没有在这些时间内完成，这个命令就会被退出并包含一个 non-zero退出代码，而且不产生结果文件。

这个命令行非常长，因此你输入的时候要小心。注意这需要你传递一个HTML的 
Selenese套件，而不是单独一个测试。并且要知道-htmlSuite选项和 ``-interactive`` 选项不兼容。
你不能同时使用这两个。

Selenium 服务器日志
~~~~~~~~~~~~~~~~~~~~~~~

服务器端日志
++++++++++++++++
当你启动selenium服务器的时候，可以使用**-log**选项来让服务在文本文件里记录有用的调试信息。


.. code-block:: bash

   java -jar selenium-server.jar -log selenium.log
这个日志文件比标准控制台日志冗长很多。（这包括了DEBUG等级的日志消息）。
这个日志文件同时也包含了记录器名字，和记录日志的进程ID号，比如：

.. code-block:: bash

   20:44:25 DEBUG [12] org.openqa.selenium.server.SeleniumDriverResourceHandler - 
   Browser 465828/:top frame1 posted START NEW
   
消息的格式是 

.. code-block:: bash

   TIMESTAMP(HH:mm:ss) LEVEL [THREAD] LOGGER - MESSAGE
   
消息可能是多行的。

浏览器端日志
+++++++++++++++++
JavaScript在浏览器端（Selenium Core）同样也记录重要消息;
在很多情况下，对终端用户来说，这些日志比普通的Selenium服务器日志有用的多。
通过传递**-browserSideLog**参数给Selenium服务器来取得浏览器端日志。

.. code-block:: bash

   java -jar selenium-server.jar -browserSideLog
   
**-browserSideLog** 可以结合**-log** 参数来记录浏览器端日志（以及其他DEBUG级别日志消息）到一个文件里。

指定特殊浏览器路径
-----------------------------------------
你可以给Selenium-RC指定一个特殊浏览器的路径。如果你有同个浏览器不同版本，并且你希望使用其中某个的时候，这会非常有用。 
并且，使用这个允许你测试运行在一个Selenium-RC不直接支持的浏览器上。
当指定运行模式的时候，使用 
\*custom 加一个空格和浏览器可执行文件的完全路径::

   *custom <浏览器路径> 
 
例如 
.. TODO:  we need to add an example here.
  
   
故障诊断 
---------------
当第一次开始使用Selenium-RC的时候，通常会遇到一些潜在的问题。
我们把它们以及解决方案在这里提出来。

无法连接到服务器
~~~~~~~~~~~~~~~~~~~~~~~~~~~
当你测试程序无法连接到VSelenium服务器，你的程序里会抛出一个异常。它会显示类似以下消息::

    "Unable to connect to remote server….Inner Exception Message: No 
    connection could be made because the target machine actively refused it…."
    
	(.NET and XP Service Pack 2 上) 

如果你看到一条类似的消息，请确认你启动了Selenium服务器。
如果你确实启动了，那么可能是两个组件间的连接性有问题。
这个情况通常不会发生,如果你的操作系统有典型的网络和TCP/IP配置。 
如果仍然有问题，请在不同的电脑上试试。 

你也可以使用通用的网络工具比如*ping*, *telnet*, *ipconfig/ifconfig*(windows上),等待来确保
你首先有一个有效的网络连接。并且，如果你要从远程的机器上连接Selenium服务器，
请先在本机上运行，并验证你可以用"localhost"来连接成功。

无法加载浏览器 
~~~~~~~~~~~~~~~~~~~~~~~~~~
这不是一个友好的错误，但如果你的Selenium服务器不能加载浏览器的时候或许你会看到这个错误。
 
:: 

    (500) Internal Server Error 

这个错误看起来会在Selenium-RC 无法加载浏览器的时候发生。

::

    500 Internal Server Error 

(.NET 和 XP Service Pack 2上) 

这个可能是因为

* Firefox (Selenium 1.0之前版本)不能启动因为浏览器已经被打开而且你没有指定一个单独的配置。
查看服务器选项里面的Firefox配置章节。
* 你使用的运行模式和你的机器上面的任何浏览器都不匹配。
检查当应用程序打开浏览器时候，你传递给Selenium的参数。 
* 你明确指定了浏览器路径(用"\*custom"--查看上文)， 但是路径不正确。
检查确保路径是正确的。并且检查论坛，确保那里没有关于你的浏览器和"\*custom"参数的已知问题。


Selenium无法找到AUT 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
如果你的测试程序成功的启动了浏览器，但是浏览器没有显示你正在测试的网站，
这个很可能是你的测试程序没有使用正确的URL。 

这个很容易发生，当你用Selenium-IDE导出脚本的时候，它插入一个假的URL。你必须手动的修改
为你要测试程序的正确URL。 

当准备一个配置时，Firefox拒绝关闭。 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
这个经常发生在你用Selenium-RC测试程序在Firefox上运行时候，但你已经有一个运行的Firefox浏览器会话，
而且你启动Selenium服务器的时候没有指定一个单独配置。来之测试程序的错误信息看起来像这样::

    Error:  java.lang.RuntimeException: Firefox refused shutdown while 
    preparing a profile 

这是一个来自服务器的完整的错误信息::

    16:20:03.919 INFO - Preparing Firefox profile... 
    16:20:27.822 WARN - GET /selenium-server/driver/?cmd=getNewBrowserSession&1=*fir 
    efox&2=http%3a%2f%2fsage-webapp1.qa.idc.com HTTP/1.1 
    java.lang.RuntimeException: Firefox refused shutdown while preparing a profile 
            at org.openqa.selenium.server.browserlaunchers.FirefoxCustomProfileLaunc 
    her.waitForFullProfileToBeCreated(FirefoxCustomProfileLauncher.java:277) 
    ……………………. 
    Caused by: org.openqa.selenium.server.browserlaunchers.FirefoxCustomProfileLaunc 
    her$FileLockRemainedException: Lock file still present! C:\DOCUME~1\jsvec\LOCALS 
    ~1\Temp\customProfileDir203138\parent.lock 

查看 `Specifying a Separate Firefox Profile <Personalizing the Firefox Profile used in the tests>`_ 章节来解决这个问题。


版本问题
~~~~~~~~~~~~~~~~~~~
确保你的Selenium版本支持你浏览器的版本。
比如，Selenium-RC 0.92 不支持Firefox 3。 有几次你可能运气好，但是不要忘记检查你所用的Selenium版本支持哪些浏览器版本。
如果不清楚，使用最新发布的Selenium版本，它支持的浏览器版本范围最广。

.. Santi: Mary Ann suggested We should also mention about JRE version needed by
   the server


当启动服务器时候的错误信息： "(Unsupported major.minor version 49.0)" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
这个错误是说你没有使用正确的Java版本。Selenium服务器需要Java 1.5以上版本。

从命令行运行如下命令来仔细检查你的Java版本。
.. code-block:: bash

   java -version
你会看到一条信息显示Java版本。

.. code-block:: bash

   java version "1.5.0_07"
   Java(TM) 2 Runtime Environment, Standard Edition (build 1.5.0_07-b03)
   Java HotSpot(TM) Client VM (build 1.5.0_07-b03, mixed mode)


如果你看到一个更低的版本号，你可能需要更新JRE，或者只要把它加到你的 PATH环境变量上。

当运行getNewBrowserSession命令时候，404错误
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
如果当你尝试在"http://www.google.com/selenium-server/"上打开一个页面的时候，碰到一个
404 错误，那么它必定是因为Selenium服务器没有被正确的配置成一个代理。
"selenium-server" 目录在google.com上不存在; 它仅在代理被正确的配置后显示存在。
代理配置非常依赖于浏览器是如何启动的，用 \*firefox, \*iexplore, \*opera, 或者 \*custom.

    * \*iexplore: 如果浏览器用\*iexplore方式启动，你可能会有Internet Explorer代理设置的问题。
	Selenium服务器尝试配置Internet选项控制面板上的全局代理设置。当Selenium服务器启动浏览器时，你必须确保那些配置正确。
试着看一下你的Internet选项控制面板。 单击 "Connections" 标签，然后单击"LAN Settings". 
      
          - 如果你需要通过带来来访问你想要测试的程序，你需要启动Selenium服务器的时候加 "-Dhttp.proxyHost"; 
            查看更多细节，请访问 `Proxy Configuration`_ 。
          - 你可能同时尝试手动配置你的代理，然后用\*custom或者\*iehta 方式启动浏览器。
            
    * \*custom: 当用 \*custom 时，你必须手动正确配置你代理，否则你会碰到一个404错误。
	仔细检查你正确配置的代理设置。 检查你时候正确的配置了代理就是尝试故意错误的配置浏览器。
	尝试配置浏览器使用错误的代理服务器主机名称或者错误的端口号。
	如果你成功的配置了错误的代理服务设置，那么你的浏览器会不能连接Internet，这是一种方法来确保这个在调整相关的设置。
      
    * 使用(\*firefox, \*opera)的其他浏览器， 会自动为你设置代理，而且这里没有已知的功能性问题。
	如果你仔细的按照这个指南做还碰到404错误的话，请把你的结果发表到用户社区的用户论坛里来需求一些帮助。


为什么我碰到一个permission denied 的错误？
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
这个错误最常见的原因是你的会话在跨域域的边界，尝试在违反同源策略（比如，从http://domain1访问一个页面，然后从http://domain2访问另外一个页面），
或者转换协议（从http://domainX 换到https://domainX）。
如果你在使用代理注入浏览器，尝试使用 '提高权限的浏览器'_ 来解决这个问题。
在指南里这个已经说明的非常详细了。确保你仔细地阅读了关于 `同源策略`_ 和 `代理注入`_ 章节。

如果你碰到的不是之前的这些情况， 它也可能发生在JavaScript 尝试访问一个还不可用的对象（在页面完全载入之前），
或者尝试访问一个不再可用的对象（在页面开始卸载之后）。
这个最典型地发生在AJAX页面，一个大的页面分成几个部分或者子框架来工作，它们各自独立地载入或者重载。
在这种情况下，错误间断出现非常普遍。经常问题不能在调试程序里重现，因为问题是起源于速度条件，
而当调试程序的开销被加在系统里面的时候，它将不能重现。
首先尝试添加静态暂停来确保是这个情况，然后再使用waitFor 之类的命令：
:ref:`waitFor commands in Selenese Chapter <waitfor>` 

用不同的浏览器配置来运行测试
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
通常Selenium-RC自动配置浏览器，但是你用"\*custom" 运行方式启动浏览器的话，你可以强制Selenium RC以原先的方式启动浏览器，
而不使用一个自动的配置。 
(注意，这个同时是一种启动Selenium RC还没明确地支持的浏览器的方式。)

比如，你可以这样启动Firefox用一个自定义的配置:

.. code-block:: bash

   cmd=getNewBrowserSession&1=*custom c:\Program Files\Mozilla Firefox\firefox.exe&2=http://www.google.com

注意，当这样启动浏览器的时候，你必须手动的配置浏览器使用Selenium服务器当做代理。
通常就是打开你的浏览器首选项，指定 "localhost:4444" 为一个HTTP代理，但是不同浏览器的使用说明可能根本不一样。
详细信息请查阅你的浏览器的文档。

注意Mozilla 浏览器对启动和停止的方式有点挑剔。
你可能需要设置MOZ_NO_REMOTE环境变量来使Mozilla浏览器的行为更加可预见一点。 
Unix用户需要避免使用Shell脚本启动浏览器；直接使用二进制可执行文件(比如， firefox-bin)通常会好一点。

如何阻止弹出框口？
~~~~~~~~~~~~~~~~~~~~~~~~~~~
在Selenium测试里你会碰到好几种 “弹出窗口”。如果那些窗口是由浏览器而不是你的AUT产生的,那么你可能无法通过使用Selenium命令来关闭他们。
因此，你会需要知道如何去除了他们。每一类需要不同地处理。

    * HTTP基本的认证对话框：这些对话框提示一个用户名/密码来登录这个站点。
	登录一个需要HTTP基本的认证的站点，可以把用户名和密码加URL上，如同在 `RFC 1738`_ 描述的，
    比如: open("http://myusername:myuserpassword@myexample.com/blah/blah/blah").
      
.. _`RFC 1738`: http://tools.ietf.org/html/rfc1738#section-3.1

    * SSL 证书警告：当Selenium RC被当作一个代理使用的时候，它会自动尝试欺骗SSL证书;	在这个章节的HTTPS部分查看更多内容。
	如果你的浏览器配置正确，你将永远不会看到SSL证书警告，但是你可能需要配置你的浏览器信任我们危险的 "CyberVillains" SSL 证书授权。
	同样的，何如配置请参考HTTPS章节。

    * 模态 JavaScript 警告/确认/提示 对话框: Selenium 尝试隐藏那些对话框（通过替代window.alert, window.confirm and 
      window.prompt），这样它们不会停止页面的执行。如果你真的看到一个警告弹出窗口，这个可能是因为它在页面载入过程中被激发的，
	  这个通常太早了以至于我们无法保护这个页面。
      Selenese 包含了断言或验证警告和确认弹出框的命令。
      在第四章查看关于这些主题的部门。
      
      

在Linux，为什么我的Firefox浏览器会话没有被关闭？
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~      
在Unix/Linux你必须直接调用"firefox-bin" ，因此确保这个可执行文件在PATH环境变量里。
如果通过Shell脚本执行Firefox，那么当Selenium RC杀掉浏览器进程的时候会杀掉Shell脚本进程，而让浏览器继续运行。
你可以像这样直接指定firefox-bin。
      
.. code-block:: bash      
      
   cmd=getNewBrowserSession&1=*firefox /usr/local/firefox/firefox-bin&2=http://www.google.com

Firefox \*chrome 使用自定义配置失败
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
检查Firefox配置目录 -> prefs.js -> user_pref("browser.startup.page", 0);
像这样注释掉这行: "//user_pref("browser.startup.page", 0);" 然后重新试一下。

如果在我的测试中避免使用复杂XPath表达式
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
如果HTML元素(button, table, label, 等等)有元素ID，那么可以可靠地取得所有元素而不依靠XPath。 
这些元素的ID应该被应用程序明确地创建。
但是非描述性元素ID (比如 id_147) 势必导致两个问题: 
第一，每次应用程序被部署的时候会产生不同的元素ID。 
第二，非特定的元素ID导致自动化测试员很难跟踪和决定哪个元素ID是测试需要的。

这种情况下你可能考虑尝试`UI-Element`_ 扩展。

.. _`UI-Element`: http://wiki.openqa.org/display/SIDE/Contributed+Extensions+and+Formats#ContributedExtensionsandFormats-UIElementLocator

可以在其父页面正在加载的时候打开一个自定义弹出框口吗（也就是在父页面javascript window.onload() 里运行）？
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
不行。Selenium 依赖于拦截器在窗口被加载的时候来判断他们的名字
这些拦截器当窗口在onload()函数之后被加载时候可以正常抓取新的窗口。
Selenium 可能不认识在onload函数之前被加载的窗口。

关于Verify命令的问题 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
If you export your tests from Selenium-IDE, you may find yourself getting
empty verify strings from your tests (depending on the programming language
used).

*Note: This section is not yet developed.*

.. Santi: I'll put some info from 
   http://clearspace.openqa.org/message/56908#56908 (we should write an example
   for all the languages...)

.. Paul:  Are we sure this is still a problem?  I've never encountered it.

.. I'll investigate into this, I only use python and using that client it's failing

Safari 和 MultiWindow 模式
~~~~~~~~~~~~~~~~~~~~~~~~~~~

*Note: This section is not yet developed.*

.. Santi: we will have to explain the following:
   http://clearspace.openqa.org/community/selenium/blog/2009/02/24/safari-4-beta#comment-1514
   http://jira.openqa.org/browse/SEL-639

Linux下Firefox 
~~~~~~~~~~~~~~~~
在Unix/Linux，Selenium 1.0以及之前版本需要直接调用"firefox-bin"，
因此如果你使用以前的版本，确保真正可执行文件在PATH环境变量上。

在大部分Linux上，真正的*firefox-bin*在::

   /usr/lib/firefox-x.x.x/ 

x.x.x是你当前的版本号。因此把这个路径加到PATH环境变量上。 你需要把以下代码添加到你的.bashrc文件：

.. code-block:: bash

   export PATH="$PATH:/usr/lib/firefox-x.x.x/"

.. This problem is caused because in linux, Firefox is executed through a shell
   script (the one located on /usr/bin/firefox), when it comes the time to kill
   the browser Selenium-RC will kill the shell script, leaving the browser 
   running.  Santi: not sure if we should put this here...

如果有必要，可以像这样在你的测试里直接指定firefox-bin路径::

   "*firefox /usr/lib/firefox-x.x.x/firefox-bin"

IE和Style属性
~~~~~~~~~~~~~~~~~~~~~~~
如果你在Internet Explorer上运行你的测试，并且你正在尝试使用它们的`style` 属性来定位元素，你肯定碰到了问题。
可能像这样一个locator::

    //td[@style="background-color:yellow"]

在Firefox, Opera 或者 Safari里工作完美，但是在IE却有问题。 
这个是因为一旦被IE解析，`@style`里的键值全被解释为大写的。所以即使源代码是小写的
你也要用::

    //td[@style="BACKGROUND-COLOR:yellow"]
这是一个问题，当你打算在多浏览器下运行你的测试，但是你很容易写代码来检测你的情形，并修改
locator仅用在IE上。   


我该去那里，如果我有关于Selenium RC的问题但是在这个 FAQ没有回答？
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
试一下 `用户论坛`_

.. _`user group`: http://seleniumhq.org/support/
