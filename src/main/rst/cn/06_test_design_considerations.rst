测试设计的注意事项
=====================

.. _chapter06-cn-reference:

*NOTE: Some sections of this chapter are not yet complete.*

测试设计介绍
------------

在本小结，我们将介绍一些可用Selenium实现的不同类型的测试。
这些测试对你可能已不再新鲜，但是把我们它作为Selenium自动化测试的框架提供给你。
借助这个框架，质量保证的专业人员可以决定什么时间执行什么样的测试，每个测试的优先级是什么，以及是否自动化这些测试。


哪些需要测试？
-------------

你的应用程序的哪些部分需要测试？这将取决于项目的不同方面：用户期待、允许时间、
产品经理设置的优先级等等。一旦项目边界被确定，测试人员一定会决定哪些需要测试。

为了帮助我们分类网络应用测试类型我们将定义一些术语。
虽然这些术语并不标准，但是我们表达的概念针对网络应用测试有很强的代表性。
为了分类可能应用在你的网络应用程序的测试类型，我们在这里已经创建了一些我们自己术语。

期望内容的测试
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
最简单的测试类型， *内容测试* ，是对静态的不变化的UI元素的存在行的简单测试。例如

- 每个网页都有期望的网页标题么？这可以用来验证点击一个链接之后你的测试找到了期望的网页。
- 应用程序的主页是否在页首包含期望的图片？  
- 网站的每个页面是否包含有页脚区，那里有公司联系方法、隐私政策和商标信息的链接？  
- 每个有标题的网页都是否使用了<h1>标签？并且每个网页的标题都包含正确的文字？



你可能需要内容测试，也可能不需要。如果页面内容不可能受到影响，那么手工测试网页内容可能更有效率。
然而如果你的应用程序正在改变平台，或者可能移动到不同的地方，内容测试就显得更有价值。

测试链接
~~~~~~~~~~~~~
网站频繁错误的根源是坏链接和在坏链接导致的缺页。
对他们的测试包括点击每个链接并验证链接正确加载后的期望页面。

*Need to include a description of how to design this test and a simple example.
Should that go in this section or in a separate section?*  


功能测试
~~~~~~~~~~~~~~
这将测试你的应用程序的具体的功能，需要一些用户输入然后返回某种类型的结果。
通常一个功能测试包括多个页面，其中有一个包含输入域集合以及提交和取消操作的表单输入页，以及一个或多个应答页。
用户输入包括文字输入域、复选框、下拉列表，以及其他的浏览器支持的输入。


测试动态元素
~~~~~~~~~~~~~~~~~~~~~~~~
动态内容是一组页面元素，它的标示符，即定位元素的特征，
会随着包含他们的页面实例的不同产生变化。
这通常是特定函数的结果页。

一个例子是返回给用户的数据结果集。
假设每一个数据结果，例如一个文件列表，它的每个特定文件都有唯一的标示符。
那么对于具体的搜索，搜索结果页将返回包含文档和相应标示符的数据结果集。
于是，对于不同的搜索，其搜索结果页返回不同的数据集，在这个数据集中，
每个文件都有不同的标示符。

举个例子，动态内容包含这样的UI元素，它的属性会在每次打开页显示时都发生改变。例如，

一个动态对象的HTML大概像这样：
           
.. code-block:: html

    <input type="checkbox" value="true" id="addForm:_id74:_id75:0:_id79:0:
	checkBox" name="addForm:_id74:_id75:0:_id79:0:checkBox"/>

这是一个复选框HTML代码片段。它的id和名字（addForm:_id74:_id75:0:_id79:0:checkBox）
都是一样的，也都是动态的（下一次再打开时，他们会改变）。


Ajax测试
~~~~~~~~~~ 
Ajax是一种支持动态实时UI元素的技术，例如动画和RSS订阅。
AJAX驱动的网络应用程序，从应用服务器段提取数据是无需页面刷新的。 

*NOTE - INCLUDE A GOOD DEFINITION OF AJAX OFF THE INTERNET.*

验证结果
-----------------

断言 vs. 验证
~~~~~~~~~~~~~~~~~
什么时候该用断言命令，什么时候该用验证命令？这全由你决定。
他们的区别是当检查失败时你想要什么样的反应。
你想终止你的测试，或者继续测试并记录下这个错误的检查？

他们的利弊权衡是这样的。如果你用断言，测试将在那一点停止，接下来的检查将不会进行。
有时，也许是经常，这就是你想要的。如果测试失败，你将立即知道测试没有通过。
像TestNG和JUnit这样的测试引擎在常用的开发环境（第五章）下都有插件，可以方便的标示错误的测试。
这样的优点是：你将立即看到（使用断言命令的）检查是否通过。
它的缺点是：如果检查失败，其他的检查将无法执行，因此你就不能得到他们的状态信息。

相反，验证命令不会终止测试。如果你的测试只使用验证命令，（假设没有未知异常）
你的测试将确保完整的执行，不论检查是否在被测应用程序中发现缺陷。
缺点：你将不得不做更多的工作以检查测试结果。因为你无法从TestNG或JUnit得到反馈信息。
所以你必须查看你的测试应用程序的控制台打印输出结果或者日志输出结果。
而且每次运行你的测试，你都必须花时间检查这些输出。
对于Java，虽然Logging Selenium（第五章）是一个非常方便的日志工具，
它可以记录验证命令的结果，但是你仍然需要打开日志检查结果。
如果你运行成百的测试，每个测试都有各自的日志，这样做是非常耗费时间的。

权衡： *assertTextPresent*, *assertElementPresent*, *assertText* 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
现在你应该熟悉这些命令和他们的使用技巧。如果不熟悉，请先参考第四章。
当构思你的测试时，你需要决定

- 我需要检查文本是否在网页上存在？ (*verify/assertTextPresent*)
- 我只需检查HTML元素是否在网页上存在？也就是说文本、图片或者其他内容不进行检查，只检查相关的HTML标记。(*verify/assertElementPresent*)
- 我需要测试两者，元素和其文本内容？(*verify/assertText*)

没有正确的答案。这取决于你的测试要求。当然也取决于你测试的应用程序的要求。
如果有疑问，并且要求不明确，你可以使用你最佳的猜测并且以后随时可以更改测试。
这些大多可以非常容易的使用Sel-IDE或者Sel-RC修改。

要知道 *verify/assertText* 是 *最特殊* 的测试。
如果HTML元素(标记)或者文本不是你期望的，那么测试将失败。
有时，例如如果HTML频繁的变化，*verifyTextPresent* 会更有意义。
它只检查内容，当程序员只修改用于呈现文本的HTML时，将通过测试。
或者，可能你的网页设计师经常修改页面，并且当预期的变化是定期的时候，
你不希望每次他们修改，你的测试都失败。
然而假设你依旧需要检查页面上的 *某些东西* ，例如段落、标题或者图片。
这种情况下，你可以使用 *verify/assertElementPresent* 。
它将确保特定类型的元素存在（如果使用Xpath，它可以确保元素相对于页面的其他对象存在）。
你可以不关心内容是什么，即一个具体的图像文件，或者特定的文本。
你只关心某种图像存在。

要得到决定这些类型某种感觉需要时间和一点经验。
虽然他们是些简单的概念，在你的测试中易于修改，但是他们依赖于你的AUT的需求。
对于某些项目，需求是明确的，因此你的测试也将是明确的。
对于其他项目，需求不是那样明确，你将不得不给出你最佳的猜测。
本节的目的是帮助你预测你所需要的，以便你可以更有效的做出决定。

选择定位策略
------------
从Selenium章节你知道有许多方式可以选择页面上的对象。
但是每种定位符类型的利弊权衡是什么？
回忆一下我们定位一个对象可以用

- 元素的id
- 元素的name属性
- Xpath语句
- 文档对象模型(DOM)

通常使用Id定位符更有效率。它还可以使你的测试代码更具可读性，假设AUT网页源码使用的Id是有意义的。
使用name属性也有相似的优点，也最终能给出最佳的性能。总所周知，Xpath语句在Internet Explorer中很慢，
这是由于IE的Xpath处理器的缺陷造成的。

然而有时你必须使用Xpath定位符。
如果网页源码没有ID或者name属性，你将不得不使用Xpath或者DOM定位符。
在写作本文之时，DOM看起来不是很常用，Xpath似乎是个更好的选择。
这可能是因为Xpath为识别对象提供了非常丰富的可能性——它非常灵活。

在使用Xpath或DOM定位时，有一个优势是IE或name属性所没有的。
用Xpath或DOM，你可以相对于页面上的其他对象定位某个对象。
例如，一个链接必须出现在第二段的<div>部分中。
你可以使用Xpath或DOM指定它。
用ID或者name属性，你只能指定它出现在页面上——页面中的某处。
如果你必须测试显示公司商标的图片出现在页面顶端的标题部分中，
Xpath可能是更理想的定位符。

定位动态对象
~~~~~~~~~~~~~
首先，你必须理解什么是动态对象，为了理解它，我们将对比静态对象。
目前为止，我们提到的所有AUT页面元素都是静态对象。
每次浏览器加载页面时，对象的html页面源码都是一样的。

例如，
           
.. code-block:: html

    <a class="button" id="adminHomeForm" onclick="return oamSubmitForm('adminHomeForm',
	'adminHomeForm:_id38');" href="#">View Archived Allocation Events</a>

这是一个HTML锚标记，它定义了一个按钮，它的Id属性是“adminHomeFor“。
和大多数HTML标记比较，这是一个相当复杂的锚标记，但是它仍然是一个静态标记。
每次浏览器加载这个页面时，它的HTML都是相同的。
锚标记在这个页面的所有实例中都保持不变。
这意味着，每当这个页面显示时，这个UI元素总是有相同的标识符。
因此，如果你的测试脚本需要点击这个按钮，你只需要使用下面的selenium命令。

.. code-block:: java

    click	adminHomeForm

或者, 在Selenium-RC中 
	
.. code-block:: java

    selenium.click("adminHomeForm");

然而你的应用程序可能在生成HTML时，它的Id是动态产生的。
因此在被测网页的不同实例中，Id是变化的。
例如，一个动态网页元素的HTML可能看起来像这样。
           
.. code-block:: html

    <input type="checkbox" value="true" id="addForm:_id74:_id75:0:_id79:0:checkBox"
	name="addForm:_id74:_id75:0:_id79:0:checkBox"/>

这里定义了一个复选框。它的Id和name属性（都是addForm:_id74:_id75:0:_id79:0:checkBox）是动态产生的数值。
在这个例子中，使用标准的定位符将看起来像下面这样。

.. code-block:: java

    click 	addForm:_id74:_id75:0:_id79:0:checkBox

或者，在Selelenium-RC中
	
.. code-block:: java

    selenium.click("addForm:_id74:_id75:0:_id79:0:checkBox);

考虑到标识符是动态产生的，以上的方法将不能奏效。
当这个页面再次加载时，标识符将是一个另外的数值，与Selenium命令使用的数值不同。
因此，这个标示符将无法找到。点击操作也将失败，同时返回一个“元素没有找到”的错误。

首先，一个简单的解决方法是只用XPath定位符，而不是尝试使用Id定位符。
因此，对于这个复选框，你可以简单地使用

.. code-block:: java

    click 	//input

或者，如果它不是页面上的第一个input元素（很有可能不是），就试试更详细的Xpath语句。

.. code-block:: java

    click 	//input[3]

或者

.. code-block:: java

    click 	//div/p[2]/input[3]
	
可是如果你确实需要使用Id定位元素，编程的解决方法就是必须的。
另外的解决方法是在你的Selenium命令使用Id之前，先从网站中抓取到它。

.. code-block:: java

   String[] checkboxIds  = selenium.getAllFields(); // 集中页面中的所有input元素的id
   if(!GenericValidator.IsBlankOrNull(checkboxIds[i])) // 如果id集合不为空
          {
                   // 如果id的开头是addForm
                   if(checkboxIds[i].indexOf("addForm") > -1) {                       
                       selenium.check(checkboxIds[i]);                    
                   }
           }

这个方法只工作在只有一个输入域的id是以'addForm'开头的情况。

考虑更多的动态对象的例子。一个页面有两个链接（其中的一个显示在页面上），他们有相同的名字和相同的html名字。
现在如果href用于点击链接，那么总是第一个元素被点中。点击第二个链接可以用以下方法实现。

.. code-block:: java

    // 第二个链接出现的标志.
    boolean isSecondInstanceLink = false;
    
    // 需要的链接.
    String editInfo = null;

    // 收集所有链接.
    String[] links = selenium.getAllLinks();

    // 循环所有收集的链接.
    for(String linkID: links) {

        // 如果获得的链接不为空
        if(!GenericValidator.isBlankOrNull(linkID))  {

            // 找到这个链接的inner HTML.
            String editTermSectionInfo = selenium.getEval
			("window.document.getElementById('"+linkID+"').innerHTML");

            // 如果获得的链接是所期望的链接.
            if(editTermSectionInfo.equalsIgnoreCase("expectedlink")) {

                // 如果这是链接的第二次出现，就保存链接的id并跳出循环.
                if(isSecondInstanceLink) {
                    editInfo = linkID;
                    break;
                }

            // Set the second appearance of Autumn term link to true as
            isSecondInstanceLink = true;
            }
        }
    }
    
    // 点击链接.
    selenium.click(editInfo);
                   

如何避免在我的测试中使用复杂的xpath表达式？
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
如果HTML元素（按钮、表格、标签等）有元素ID，那么所有元素可以可靠地获取而不需要凭借xpath。
这些元素的ID是由应用程序明确创建的。
但是非描述性元素ID（例如id_147）易于导致两个问题：
第一，每次部署应用程序都产生不同的元素id。
第二，自动化测试人员很难跟踪不明确的元素id，也很难确定哪个id是测试需要的。

在这种情况下，你可以考虑试试 `UI-Element`_ 扩展。

.. _`UI-Element`:

	http://wiki.openqa.org/display/SIDE/Contributed+Extensions+and+Formats#ContributedExtensionsandFormats-UIElementLocator

定位符的性能注意事项
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

自定义定位符
~~~~~~~~~~~~~~~
  
*This section is not yet developed.*

  
.. Dave: New suggested section. I've been documenting location strategies and 
   it's possible in RC to add new strategies. Maybe an advanced topic but 
   something that isn't documented elsewhere to my knowledge.



测试Ajax应用
-------------------------
在本章的开头我们已经介绍了AJAX的特性。
基本上，实现了Ajax的页面元素可以动态刷新，而无需刷新整个页面。

等待AJAX元素
~~~~~~~~~~~~~~~~~~~~~~~~~~~
对AJAX元素使用 *waitForPageToLoad* 是无效的，因为在刷新AJAX元素时页面实际上没有加载。
测试执行暂停一段特定的时间也是不太好，因为网页元素可能晚于期望的时间出现，这将导致无效的测试失败
（报告失败但事实上并为失败）。
较好的方法是等待一段时间预先确定的时间，然后元素一出现就继续执行。

考虑点击页面按钮（没有刷新页面），页面出现一个链接(link=ajaxLink)。
Selenium将使用 *for* 循环处理这种情况。 

.. code-block:: bash
   
   // 循环初始化。
   for (int second = 0;; second++) {
	
	// 如果循环到达60秒就退出循环。
	if (second >= 60) break;
	
	// 搜索元素"link=ajaxLink"，如果找到退出循环。
	try { if (selenium.isElementPresent("link=ajaxLink")) break; } catch (Exception e) {}
	
	// 暂停1秒。
	Thread.sleep(1000);
	
   } 

这当然不是唯一的解决方法。在论坛中，AJAX是一个寻常的话题，
我们建议搜索论坛中的帖子，看看其他人是如何处理已经贴出的问题的。

UI映射
----------
UI映射是集中应用程序的UI元素的定位符，然后测试脚本使用UI映射定位被测元素。

.. Santi: Yeah, there's a pretty used extension for this (UI-element), it's 
   also very well integrated with selenium IDE.   

UI映射是一个仓库，是所有脚本对象的存储地点。UI映射有以下几点优势。

- 对UI对象有集中的定位，而不是分散到各个脚本。这使得脚本维护起来更容易且更有效率。
- 隐藏HTML标识符和名字使它更易于阅读，也增加了测试脚本的可阅读性。

考虑下面的例子（java语言)，他们是一个网站的selenium测试：

.. code-block:: java

   public void testNew() throws Exception { 
   		selenium.open("http://www.test.com");
   		selenium.type("loginForm:tbUsername", "xxxxxxxx");
   		selenium.click("loginForm:btnLogin");
   		selenium.click("adminHomeForm:_activitynew");
   		selenium.waitForPageToLoad("30000");
   		selenium.click("addEditEventForm:_idcancel");
   		selenium.waitForPageToLoad("30000");
   		selenium.click("adminHomeForm:_activityold");
   		selenium.waitForPageToLoad("30000");
   } 

脚本中几乎没有东西可以理解。
即使是应用程序的经常使用者都无法弄清这段脚本是干什么的。
一个更好的脚本将是这样：
   
.. code-block:: java

   public void testNew() throws Exception {
   		selenium.open("http://www.test.com");
   		selenium.type(admin.username, "xxxxxxxx");
   		selenium.click(admin.loginbutton);
   		selenium.click(admin.events.createnewevent);
   		selenium.waitForPageToLoad("30000");
   		selenium.click(admin.events.cancel);
   		selenium.waitForPageToLoad("30000");
   		selenium.click(admin.events.viewoldevents);
   		selenium.waitForPageToLoad("30000");
   }

虽然脚本没有提供注释，但是它更易理解，因为脚本使用了关键字。
（请注意UI映射不是注释的替代！）
一个更易于理解的脚本应该看起来这样。
   
.. code-block:: java

   public void testNew() throws Exception {

		// 打开应用程序地址
   		selenium.open("http://www.test.com");
   		
   		// 提供管理员用户名
   		selenium.type(admin.username, "xxxxxxxx");
   		
   		// 点击登录按钮。
   		selenium.click(admin.loginbutton);
   		
   		// 点击创建新事件按钮。
   		selenium.click(admin.events.createnewevent);
   		selenium.waitForPageToLoad("30000");
   		
   		// 点击取消按钮。
   		selenium.click(admin.events.cancel);
   		selenium.waitForPageToLoad("30000");
   		
   		// 点击显示旧事件按钮。
   		selenium.click(admin.events.viewoldevents);
   		selenium.waitForPageToLoad("30000");
   }

整个想法是集中对象的定位并给他们使用可理解的名字。
为了达到这个目的，在Java中可以使用属性文件。
属性文件包含键/值对，键和值都是字符串。

考虑一个属性文件 *prop.properties* 的例子，它包含上面用到的HTML对象的定义。
   
.. code-block:: java
   
   admin.username = loginForm:tbUsername
   admin.loginbutton = loginForm:btnLogin
   admin.events.createnewevent = adminHomeForm:_activitynew
   admin.events.cancel = addEditEventForm:_idcancel
   admin.events.viewoldevents = adminHomeForm:_activityold

虽然我们的对象还是引用了html的对象，但是我们在测试脚本和UI元素之间引入了一个抽象层。
属性文件中的数值可以用于测试类中实现UI映射。了解更多熟悉文件点击这个 URL_ 。

.. _URL: http://java.sun.com/docs/books/tutorial/essential/environment/properties.html

位图比较
------------------
*This section has not been developed yet.*

.. Tarun: Bitmap comparison is about comparison of two images. This feature 
   is available in commercial web automation tools and helps in UI testing (or
   I guess so)
   Santi: I'm not really sure how this can be achieved using Selenium. The only
   idea that I have right now is calculating the checksum of the image and 
   comparing that with the one of the image that should be present there, like:

   <pseudocode>
     img_url = sel.get_attribute("//img[@src]")
     image = wget(img_url)
     assertEqual(get_md5(image), "MD5SUMEXPECTED12341234KJL234")
   </pseudocode>

   But I've never implemented this before...

.. Santi: Isn't the "Advanced Selenium" chapter better for this topic to be 
   placed on?


数据驱动测试
~~~~~~~~~~~~~~~~~~~
*This section needs an introduction and it has not been completed yet.*

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

为什么我们想把数据从我们的测试中分离出来？
测试的重要方法之一就是用不同的数值重复的运行相同的测试。
这就是 *数据驱动测试* 也是非常常见的测试任务。
自动化工具，包括Selenium在内，通常处理这个任务，
因为它常常是构建测试自动化以支持手动测试的普遍原因。

上面的Python脚本打开了一个文本文件。
文件的每一行包含不同的搜索字符串。
然后代码把所有字符串保存到一个字符串数组中。
最后，枚举字符串数组并按照每个字符串搜索和断言。

这是你可以做的最简单的例子，但是它的目的是告诉你无论用编程还是脚本，
数据驱动都是很容易实现的，尽管用Selenium-IDE实现起来非常困难甚至是不可能的。

Java客户端驱动从电子表格读取数据或使用TestNG的数据提供者能力，可以参考 `Selnium RC wiki`_ 。

.. _`Selnium RC wiki`: http://wiki.openqa.org/pages/viewpage.action?pageId=21430298


Handling Errors
---------------

*Note: This section is not yet developed.*

Error Reporting
~~~~~~~~~~~~~~~


Recovering From Failure
~~~~~~~~~~~~~~~~~~~~~~~

A quick note though--recognize that your programming language's exception-
handling support can be used for error handling and recovery.

.. TODO: Complete this... Not sure if the scenario that I put is the best example to use
.. Then, what if google.com is down at the moment of our tests? Even if that sounds
   completely impossible. We can create a recovery scenario for that test. We can
   make our tests to wait for a certain amount of time and try again:

.. The idea here is to use a try-catch statement to grab a really unexpected
   error.

*This section has not been developed yet.*

.. Tarun: Here Test attempt is re made against a website which comes up with 
   something unexpected i.e. pop up window or unexpected page etc, I guess 
   for selenium this largely depends on how tests are designed. Say in case 
   of java Try Catch Block might help achieving this.

.. Santi: Isn't the "Advanced Selenium" chapter better for this topic to be 
   placed on?

   
   
数据库验证
~~~~~~~~~~~~~~~~~~~~~
因为你可以使用你喜欢的语言做数据库查询，假设你有数据库支持函数，
为什么不使用他们对被测应用程序做数据验证/提取呢？

考虑一个注册过程的例子，被注册的邮件地址来自于数据库。
下面是建立数据库链接和从DB中提取数据的例子：

**In Java:**

.. code-block:: java

   // 加载Microsoft SQL Server JDBC驱动.   
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
      
   // 准备连接url.
   String url = "jdbc:sqlserver://192.168.1.180:1433;DatabaseName=TEST_DB";
   
   // 获得DB的连接.
   public static Connection con = 
   DriverManager.getConnection(url, "username", "password");
   
   // 创建语句对象，用于写入DDL和DML 
   // SQL语句.
   public static Statement stmt = con.createStatement();
   
   // 通过Statement.executeQuery方法向数据库发送SQL SELECT语句
   // 该方法返回请求信息，它返回一个行数据的结果集对象 
   
   
   ResultSet result =  stmt.executeQuery
   ("select top 1 email_address from user_register_table");
   
   // 从“结果”对象中获取 *email_address* 的数值.
   String emailaddress = result.getString("email_address");
   
   // 使用获取的数值登录应用程序.
   selenium.type("userid", emailaddress);

这是一个用Java从DB中获取数据的简单的例子。
一个更复杂的测试可以是验证无效用户不能登录到应用程序。
根据你的所见，这将费不了太多功夫。
