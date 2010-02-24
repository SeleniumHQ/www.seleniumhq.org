用Selenium-IDE开发测试用例
==========================

.. _chapter03-cn-reference:

介绍 
----
Selenium-IDE (集成开发环境) 是你用来开发你的Selenium测试用例的工具。它是一个易用的FireFox插件并且通常是开发测试用例的最有效方式。它还包含一个右键菜单，允许你先从浏览器当前页面选择一个UI元素，然后从一个列表中选择Selenium命令，这些命令通常包含根据UI元素的内容预定义的参数。这不但节省时间，而且也是一个学习Selenium脚本语法的极好方法。
  
本章将介绍Selenium IDE，以及有效使用它的方法。 
  
安装IDE 
--------
首先用Firefox从SeleniumHQ `下载页面`_ 下载IDE
  
.. _`下载页面`: http://seleniumhq.org/download/
  
当从Firefox下载时，将显示如下窗口。
 
.. image:: ../images/chapt3_img01_IDE_Installation.png
   :align: center

选择立即安装。Firefox的加载项窗口弹出，先显示下载进度条，当下载完成后，显示如下。

  
.. image:: ../images/chapt3_img02_IDE_Installation.png
   :align: center
  
重新启动Firefox 。在Firefox重新启动后，你将发现Selnium-IDE列在Firefox工具菜单上。

.. image:: ../images/chapt3_img03_IDE_Installation.png
   :align: center

打开IDE 
--------
要运行Selenium-IDE，只需从Firefox的工具菜单中选择。它会打开一个空的脚本编辑窗口和菜单用以加载和创建新测试用例。
  
.. Darn!  I need to redo this.  No time now, gotta go!!!!

.. image:: ../images/chapt3_img04_IDE_open.png
   :align: center
  
IDE特色
-------
菜单栏 
++++++

文件菜单允许你创建、打开和保存测试用例和测试套件文件。编辑菜单可以复制、粘贴、删除、撤消和选择所有这些操作，用来编辑你的测试用例里的命令。选项菜单可以改变设置。你可以为某些命令设置超时时间，添加用户自定义的用户插件到Selenium命令的基础集合中，以及指定保存测试用例的（语言）格式。帮助菜单是Firefox的标准帮助菜单；只有一个菜单项——UI-Element文档——涉及到Selenium-IDE 。

工具栏 
++++++++

工具栏包含控制测试用例的按钮，
其中包括调试测试用例的单步执行功能。
最右侧的红色圆点按钮是录制按钮。

  
.. image:: ../images/chapt3_img05_IDE_features.png
   :align: center
  
|speed control|
    速度控制：控制运行测试用例的速度的快慢。
|run all|
    运行全部：运行整个测试套件，该测试套件加载了许多测试用例。
|run|
    运行：运行当前选择的测试用例。
    当只有一个测试用例时，这个按钮和运行所有按钮有相同的效果。
|pause resume|
    暂停/恢复：停止和再开始运行中的测试用例。
|step|
    单步执行：一次执行一条命令的逐步运行测试用例。
    用于调试测试用例。
|testrunner|
    测试运行器模式：在加载了Selenium-Core的测试运行器的浏览器中运行测试用例。
    测试运行器并不是很常用，有可能会被弃用。
    这个按钮是为了以向后兼容测试运行器的方式运行测试用例。
    大多数用户将来可能不需要这个按钮。
|rollup|
    运用rollup规则：这个高级功能可以把重复执行的Selenium命令序列组成一个单一的动作。
    关于rollup规则的详细文档参见帮助菜单中的UI-Element文档。

|record|
    录制：记录用户的浏览器操作。

.. |speed control| image:: ../images/chapt3_img06_Speed_Control.png
.. |run all| image:: ../images/chapt3_img07_Run_All.png
.. |run| image:: ../images/chapt3_img08_Run.png
.. |pause resume| image:: ../images/chapt3_img09_Pause.png
.. |step| image:: ../images/chapt3_img11_Step.png
.. |testrunner| image:: ../images/chapt3_img12_TestRunner_Mode.png
.. |rollup| image:: ../images/chapt3_img13_Apply_Rollup_Rules.png
.. |record| image:: ../images/chapt3_img14_Record.png
 
测试用例窗格
++++++++++++++

测试脚本显示在测试用例窗格内。
它有两个选项卡，一个用于以清晰的表格样式显示命令和命令参数。

.. image:: ../images/chapt3_img15_Table_Format.png
   :align: center
  
源代码选项卡以原生格式显示测试用例，测试用例文件也以这个格式保存。
HTML是默认的格式，当然这个格式可以换成编程语言，例如Java或者C#，
或者是脚本语言，像Python。具体细节参见选项菜单。
源码视图也允许以原始形式编辑测试用例，
包括复制、剪切和粘贴操作。

命令、目标和数值输入域可以显示当前选择的命令和命令参数。
通过输入域你可以修改当前选择的命令。
在窗格底部的参考标签中，命令的第一个参数总是进入目标域。
如果参考标签需要指定第二个参数，它总是进入数值域。
  
.. image:: ../images/chapt3_img16_Entry_Fields.png
   :align: center

如果你开始在命令域中打字，一个以你键入首字母开头的命令下拉列表将被弹出；
然后你可以在下拉列表中选择你想要的命令。

  
日志/参考/UI-Element/Rollup 窗格
++++++++++++++++++++++++++++++++++++

底部的窗格用于显示四个不同的功能：日志、参考、UI-Element和Rollup。具体显示的是哪个功能取决于哪个标签被选定了。

日志
~~~~~~~~~

当运行测试用例时，
即使你没有先选择日志标签，
显示进度的错误消息和信息消息也会自动的显示在这个窗格内。
这些消息对测试用例的调试通常都非常有用。
注意清除按钮用于清除日志。
还要注意信息按钮可以选择显示信息的不同级别。
  
.. image:: ../images/chapt3_img17_Bottom_Box.png
   :align: center

参考
~~~~~~~~~

只要在表格样式下输入或修改Selenese命令和参数，
参考标签就是默认选择的。
在表格样式下，参考窗格将显示当前命令的文档。
当输入或修改命令式，
无论是表格样式还是源码样式，
确保在目标和数值域中指定的参数与参考窗格中指定的参数相对应是十分重要的。
提供的参数数量与指定测参数数量要对应，
提供的参数顺序与指定的参数顺序要对应，
提供的参数类型与指定的参数类型要对应。
如果三个条件中的任何一个没有相符，命令将不会正确的执行。

.. image:: ../images/chapt3_img18_Bottom_Box_Ref.png
   :align: center

当参考标签中的快速参考没有价值时，查阅Selenium `参考`_ 文档是非常必要的。

.. _`参考`: http://release.openqa.org/selenium-core/1.0/reference.html
  
UI-Element and Rollup
~~~~~~~~~~~~~~~~~~~~~

这个两个窗格中的详细信息（涉及高级功能）可以在Selenium-IDE的帮助菜单中UI-Element文档中找到。
     
创建测试用例
-------------------
这里有三种开发测试用例的基本方法。
通常测试开发人员需要掌握所有三种技术。 

录制  
+++++++++

许多首次使用者都是以录制测试用例开始的，这些测试用例都来自他们与网站的交互。
当Selenium-IDE首次打开时，录制按钮默认是打开的。

.. note:: 
    通过一个可用的用户插件这个按钮可以设置成默认关闭。

.. TODO: mam-p: We need a link to this user extension.  It doesn't appear to be on the extensions page to which we've already referred readers. 

在录制过程中，Selenium-IDE将自动地根据你的操作把命令插入到你的测试用例中。
通常，这将包括：
  
* 点击一个链接 - *click* 或者 *clickAndWait* 命令
* 输入数值 - *type* 命令
* 从下拉列表框选择选项 - *select* 命令
* 点击复选框或单选按钮 - *click* 命令
  
这里有些“已知问题”需要注意：
  
* 为了能够录制 *type* 命令，需要点击页面的其他地方。
* 点击一个链接，通常会录制 *click* 命令。 
  你经常需要把它改成 *clickAndWait*  以确保测试用例暂停一会儿直到新页面加载完成。
  否则测试用例会在所以UI元素加载之前就继续运行命令。
  这样会导致意想不到的测试用例失败。
  
用右键菜单添加验证和断言
++++++++++++++++++++++++++++++++++++++++++++++++++++++
  
测试用例还需要检查网页的属性。
这就需要 *assert* 和 *verify* 命令。
但是在这里我们不会描述这些命令的具体使用情况；那将是 :ref:`"Selenese" Selenium命令集 <chapter04-cn-reference>` 章节的内容。
这里我们只是简单的描述如何把他们添加到测试用例中。

用Selenium-IDE录制的时候，在显示被测应用的浏览器页面的任何地方点击右键，
你将看到显示 *verify* 和 *assert* 命令的右键菜单。

.. TODO: add image here (it wasn't correctly uploaded in the GDocs version

首次使用Selenium，可能只有一条Selenium命令被列出。
然而随着IDE的使用，额外的命令很快被添加到这个菜单中。
你只需要在当前页面上选择UI元素，
Selenium-IDE会尝试预测命令以及命令的参数。
  
让我们来看看这是如何工作的。打开一个网页选择一段文本。段落或者标题都可以。
现在右键点击你选择的文本。
右键菜单会显示 *verifyTextPresent* 命令并且建议参数就是这段文本自身。
  
还请注意“显示所有命令”菜单选项。
它能显示更多的带建议参数的命令来测试当前选择的UI元素。
  
试试更多的UI元素。试着右键点击图片或者用户控件，例如按钮或者复选框。
你可能要用“显示所有命令”显示除 *verifyTextPresent* 以外的其他命令。
一旦选择了这些其他的选项，更常用的命令将会出现在初级的右键菜单中。
例如，对图片选择 *verifyElementPresent* ，当下次选择图片并右键点击的时候，
这条命令会在初级的右键菜单中可用。
  
再次说明，这些命令会在 :ref:`"Selenese" Selenium命令集 <chapter04-cn-reference>` 章节里详细解释。
但是现在，请随意使用IDE在测试用例里录制和选择命令然后运行。
通过IDE的简单实验，你能学会许多Selenium命令。
  
编辑  
+++++++

插入命令 
~~~~~~~~~~~~~~

表格视图
__________

在测试用例中选择一个插入命令的点。
右键点击并选择插入命令。
现在用命令编辑的文本域输入新命令和它的参数。

源码视图
___________

在测试用例中选择一个插入命令的点，输入HTML标签。
这些标签必须能够创建一个有3列的行，用来包含：命令，
第一参数（如果命令需要），第二参数（同样，如果有必要）。
确保切换回表格视图之前，保存你的测试。

  
插入注释 
~~~~~~~~~~~~~~

添加注释可以使你的测试更具可读性。
在运行测试用例的时候，这些注释会被忽略。

为了在你的测试中添加垂直方向上的空格（一个或更多的空行），你必须创建空注释。
空命令将导致运行时的错误。

表格视图
__________

在测试用例中选择一个插入注释的点。
右键点击并选择插入注释。
现在用命令域输入注释。你的注释将显示成紫色字体。

源码视图
___________

在测试用例中选择一个插入注释的点。
添加HTML风格的注释，例如， *<!-- 你的注释在这里 -->* 。
  
编辑命令或者注释
~~~~~~~~~~~~~~~~~~~~~~~~~

表格视图
__________

只需选择需要修改的行并用命令、目标和数值域修改它。

源码视图
___________

因为源码视图提供了一种相当于所见即所得的编辑器，
所以只需修改你想修改的行——命令、参数或者注释。

打开和保存测试用例
++++++++++++++++++++++++++++++

作为菜单命令的文件=>打开、保存和另存为在大多数其他的程序中都有相似的打开和保存文件功能。
当你打开一个已存在的测试用例时，Selenium-IDE就在测试用例窗格显示它的命令。

通过文件菜单，测试套件文件也可以被打开和保存。
然而这些操作在菜单底部有自己的菜单项；
打开、保存和另存为只针对文件。  
  
.. note:: 
    写到目前为止，这里有一个缺陷。
    有时当IDE第一次打开，然后选择文件=>打开，但是什么都没有发生。
    如果你遇到这种情况，就关掉IDE然后再打开（你不必关闭浏览器自身）。
    这样可以解决以上的问题。
  
运行测试用例
------------------

IDE有许多种运行测试用例的选项。你可以一次运行整个测试用例，
停止和启动它，一次执行一行，执行你正在开发的命令，
你还可以批处理运行整个测试套件。
用IDE执行测试用例是非常灵活的。
  
运行测试用例
    点击运行按钮运行当前显示的测试用例。
  
运行测试套件
    点击运行所有按钮运行当前加载的测试套件的所有测试用例。
  
停止和启动
    暂停按钮可以用于停止正在运行的测试用例。
    然后这个按钮的图标会变成恢复按钮。
    点击恢复按钮可以继续运行。
  
在中间停止
    你可以在测试用例中设置一个断点以使得测试用例停在一条特定的命令上。
    这对于调试测试用例是非常有用的。
    要设置断点，选择一条命令，点击右键，从右键菜单中选择切换断点。
  
从中间开始
    你可以告诉IDE从测试用例中间的一条特定命令开始运行。这也是用于调试。
    要设置一个起点，选择一条命令，点击右键，从右键菜单中选择设置/清除断点。
  
运行任意一条命令
    双击任何一条命令可以运行它。这对于编写单条命令是很有用的。
    当你不能确定命令是否正确时，它可以立即测试你正创建的命令。
    你可以双击它，看它是否运行正确。它还可以在右键菜单里执行。
  
用基准URL在不同域中运行测试用例
-----------------------------------------------------
.. TODO: mam-p: Figure out how to display the many URLs in the section below without generating links for each one.  (They're just examples, i.e., not real!)

在Selenium-IDE顶部的 *基准URL* 域对允许测试用例跨域运行非常有用。
假设一个站点命名为\http://news.portal.com ，它有一个内部的beta站点命名为
\http://beta.news.portal.com 。
任何测试这些站点并以 *open* 命令开头的测试用例应该指定一个 *相对URL* 作为
*open* 命令的参数，而不是 *绝对URL* （绝对URL以协议开头，例如http:或者https:）。
Selenium-IDE将会以在 *基准URL* 的基础上追加 *open* 命令参数的方式创建绝对URL。
例如，下面的测试用例将会测试\http://news.portal.com/about.html：


.. image:: ../images/chapt3_img20_BaseURL_prod.png
   :align: center

修改过基准URL的相同测试用例将运行在
\http://beta.news.portal.com/about.html:

.. image:: ../images/chapt3_img21_BaseURL_beta.png
   :align: center
 
调试
---------
调试意味着发现并修改测试用例中的错误。这是测试用例开发的正常部分。
  
我们在这里不教授调试，因为大多数Selenium-IDE的使用者已经有了基础的调试经验。
如果这对你来说是新的，我们建议你问问在你的组织中的开发人员。

.. TODO: mam-p: The two sections below have a great deal of overlap with "Running Test Cases" above.

断点和起点
+++++++++++++++++++++++++++

Sel-IDE支持断点设置，从测试用例的任何一点都可以启动和停止测试用例的运行。
你可以在测试用例中间运行特定的命令，并且检查测试用例在那一点是如何工作的。
做到这一点，请在你要检查的命令前设置断点。
  
要设置断点，选择一个命令，单击右键，并从右键菜单中选择 *切换断点* 。
然后单击运行按钮执行从起始到断点处的测试用例。

有时候从测试用例的中间某处执行到结尾，或者从起点运行到断点是非常有用的。
例如，假设你的测试用例先登录网站，然后进行了一系列测试并且正调试其中的一个测试。
然而，您只需要登录一次，但是你需要再运行你的测试的时候就像你开发他们的时候一样。
你可以登录一次，然后从登录部分后面已经设置好起点的地方运行你的测试用例。
这将阻止你每次再次运行测试用例的时候不必手动注销。
  
要设置起点，选择一个命令，单击右键，并从右键菜单中选择 *设置/清除起点* 。
然后点击运行按钮从起点处执行测试用例。
  
单步调试测试用例
+++++++++++++++++++++++++++

一次执行一条测试用例命令（单步执行它），依照下面的步骤：

1. 用工具栏的运行按钮启动测试用例的运行。  

.. image:: ../images/chapt3_img08_Run.png
   :align: center

2. 立即用暂停按钮暂停正在执行的测试用例。

.. image:: ../images/chapt3_img19_Pause-only.png
   :align: center

3. 反复选择步骤按钮。

.. image:: ../images/chapt3_img11_Step.png
   :align: center

查找按钮
+++++++++++

查找按钮用于查看当前显示网页（浏览器里）上的当前选择的Selenium命令的UI元素。
当为命令的第一个参数创建定位符时（参见Selenium命令章的 :ref:`定位符<locators-section>` ），
这是非常有用的。它可以用于任何一条需要识别网页元素的命令，例如： *click*, *clickAndWait*,
*type*, 等等。

从表格视图中选择任何一条有定位符参数的命令。点击查找按钮。
现在看看FireFox浏览器里显示的网页。
一个明亮的绿色方框包围着由定位符参数指明的元素。

页面源码进行调试
+++++++++++++++++++++++++

经常，当你调试测试用例时，你一定会看页面源码（你正在测试的网页的HTML）以确定问题。
FireFox使这变得轻松。只要右键点击网页并选择源码。HTML就在一个单独的窗口打开。
使用其查找功能（编辑=>查找）搜索关键字，以查找你正在测试的UI元素的HTML。

另外，选择你想看源码的部分网页。然后右键点击网页并选择查看已选择的源码。
在这种情况下，单独的HTML窗口将只包含少量的源码，高亮的部分就代表你的选择。

定位符协助
++++++++++++++++++

只要Selenium-IDE录制了定位符类型参数，它就会存储额外的信息，
以允许用户查看其他可能的定位符类型用于代替。
这个功能对于更进一步的学习定位符是非常有益的，
而且人们常常需要它帮助构建一个非录制的不同类型的定位符。 

定位符协助在Selenium-IDE窗口中以下拉列表框的方式展现，在目标域的右端
（只有当目标域包含可录制的定位符类型参数时）。
下面是一个命令的下拉类表框内容的快照。
请注意下拉类表的第一列是可供替代的定位符，第二列说明每个定位符的类型。

.. image:: ../images/chapt3_img22_IDE_Locator_Assistance.png

开发测试套件 
--------------------
测试套件是测试用例的集合，它显示在IDE的最左侧窗格。
测试套件窗格可以手动的通过选择窗格右边框中间的小圆点开启或关闭
（如果关闭，小圆点位于整个Selenium-IDE窗口的左边框）。

当一个已经存在的测试套件被打开 *或者* 从文件菜单中选择新的测试用例时，
测试套件窗格会自动打开。在后一种情况下，
新测试用例会立即出现在前一个测试用例的下面。

Selenium-IDE不支持向测试套件加载预先存在的测试用例。
用户如果想要以添加预先存在的测试用例的方式创建或修改测试套件，
就必须用工编辑测试套件文件。

测试套件文件是一个HTML文件，包含一个单列的表。
在<tbody>部分每行的每个表格都包含一个测试用例的链接。
下面的例子是一个包含了四个测试用例的测试套件：

.. code-block:: html

	<html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Sample Selenium Test Suite</title>
        </head>
        <body>
            <table cellpadding="1" cellspacing="1" border="1">
                <thead>
                    <tr><td>Test Cases for De Anza A-Z Directory Links</td></tr>
                </thead>
            <tbody>
                <tr><td><a href="./a.html">A Links</a></td></tr>
                <tr><td><a href="./b.html">B Links</a></td></tr>
                <tr><td><a href="./c.html">C Links</a></td></tr>
                <tr><td><a href="./d.html">D Links</a></td></tr>
            </tbody>
            </table>
        </body>
	</html>
	
.. note::
   测试用例文件不应该和调用它们的测试套件在同一个地方。
   和在Mac OS和Linux系统，这确实是如此。
   然而，在写作此文档时，一个错误会放置Windows用户把测试用例放置在调用它们的测试套件以外的其他地方。

.. do some testing here of test suites鈥攄o they save correctly?
   I've seen errors in the past. 
  
用户插件 
---------------
用户插件是JavaScript文件，允许用户创建他或她自己的定制和特色以增加额外的功能。
大多数情况下，这是以定制命令的形式，但是这种扩展性并不限于增加命令。

这里有许多有用户创建的有用的 `插件`_ 。  

.. _`插件`: http://wiki.openqa.org/display/SEL/Contributed+User-Extensions

也许在所有Selenium-IDE插件中最受欢迎的是流程控制插件，它提供while循环和简单条件判断。
它是 goto_sel_ide.js_ 。一个如何使用由这个插件提供的功能的例子，请看它的作者创建的 `页面`_ 。


.. _goto_sel_ide.js: http://wiki.openqa.org/download/attachments/379/goto_sel_ide.js
.. _`页面`: http://51elliot.blogspot.com/2008/02/selenium-ide-goto.html

要安装此插件，把它在你的电脑中的位置路径填写到Selenium-IDE的选项=>选项=>常规选项卡的 **Selenium Core 插件** 域中。

.. image:: ../images/chapt3_img31_Extensions_install.png
   :align: center

为了此插件文件被读取，在选择 **确定** 按钮之后，你必须关闭并再打开Selenium-IDE。
任何对插件的修改都需要你关闭和再打开Selenium-IDE。

编写你自己的插件的信息可以在靠近底部的selenium `参考`_ 文档中找到。

.. _`参考`: http://release.openqa.org/selenium-core/1.0/reference.html

.. TODO:  mam-p: need info on how to install user extensions, especially on the diff
   between "Selenium Core Extensions" and "Selenium IDE" extensions on the
   Options=>Options=>General page.


格式 
------

在选项菜单里的格式允许你选择保存和显示测试用例的语言。默认是HTML。

如果你用Selenium-RC运行你的测试用例，这个功能用来把你的测试用例翻译成编程语言。
选择一种用Selenium-RC开发的测试程序的语言，例如Java、PHP。
然后用文件=>保存，保存你的测试用例。你的测试用例就会翻译成由你选择的语言写成的一系列函数。
本质上，支持你的测试的程序代码是由Selenium-IDE为你生成。

另外，请注意，如果生成的代码不能满足你的要求，你可以通过编辑定义生成过程的配置文件改变它。
每种支持语言都有可编辑的配置设置。它是在选项=>选项=>格式选项卡中。

  
.. TODO: Add the steps here to change the format. 
  
.. note::
   在本文写作之时，此功能目前还不被Selenium的开发者支持。
   然而，作者以有限的方式改变了C#的格式，并且它一直运作良好。
  
在不同的浏览器中执行Selenium-IDE测试
--------------------------------------------------
虽然Seleniu-IDE只能在FireFox上运行测试，但是通过使用命令行接口调用Selenium-RC服务器，
用Selenium-IDE开发的测试可以在其他的浏览器中运行。
这个话题包含在Selenium-RC章的 :ref:`运行Selenese测试<html-suite>` 节。

疑难解答
---------------
下面是一个图像/解释的列表，它描述了使用Selenium-IDE经常出现的问题的根源。

|startup|
    这个问题经常发生在Selenium IDE首次启动时。解决方法是关闭和再次打开Selenium IDE。这个缺陷已经提交成 `SIDE-230`_ 。

.. _SIDE-230: http://jira.openqa.org/browse/SIDE-230

------------------

|open|
    你已经习惯用 **文件=>打开** 打开测试套件文件。用 **文件=>打开测试套件** 代替。

------------------

|timing|
    这种类型的 **错误** 可能表明一个时间问题，例如，当命令执行时，
    在你的命令中的定位符指明的元素还没有完全加载。
    试着在命令前加 **pause 5000** 以确定这个问题是不是确实和时间有关。
    如果是，试试在失败的命令前适当的加 **waitFor\*** or **\*AndWait** 命令。

------------------

|param|
    每当你的变量替换的尝试失败的时候，就像上面的 **open** 命令一样，
    这表明实际上你没有用你要访问的数值创建变量。
    这有时是由于把本该在 **目标** 域中的变量放到了 **数值** 域，反之亦然。
    在上面的例子中，**store** 命令的两个参数被错误的放置在相反的顺序。
    对于任何的Selenese命令，第一个请求参数必须放到 **目标** 域，
    第二个请求参数（如果它存在）必须放在 **数值** 域。

----------

|ts|
    一个测试用例在你的测试套件无法找到。
    确保测试用例的确是在测试套件标明位置。
    同时，请确认实际的测试用例文件在它的
    文件名和测试套件的引用中都有.html扩展名。

----------

|space|
    Selenium-IDE对空格敏感！命令前后多余的空格将导致它无法辨认。

----------

|extension|
    你的插件的文件内容还没有被Selenium-IDE读取。请确保你已经通过
    **选项=>选项=>常规** 在 **Selenium Croe 插件** 域，指定了正确的插件路径名。
    并且，在插件文件 *或*  **Selenium Core 插件** 域的内容修改之后，
    Selenium-IDE必须重新启动。

----------

|collapsed|
    这种类型的错误信息说明Selenium-IDE在没有失败的地方产生了一个失败。
    然而Selenium-IDE是正确的，在这个测试用例中实际值和指定的数值不相匹配。
    问题在于日志中的错误信息把一系列空格压缩成了一个，这的确令人困惑。
    在上面的例子中，请注意 **verifyTitle** 的参数在“System”和“Division”中有两个空格。
    页面的实际标题在这两个字之间只有一个。因此Selenium-IDE产生错误是正确的。

.. |startup| image:: ../images/chapt3_img30_Trouble_startup.png
.. |open| image:: ../images/chapt3_img24_Trouble_open.png
.. |param| image:: ../images/chapt3_img28_Trouble_param.png
.. |timing| image:: ../images/chapt3_img27_Trouble_timing.png
.. |ts| image:: ../images/chapt3_img23_Trouble_ts.png
.. |space| image:: ../images/chapt3_img25_Trouble_space.png
.. |extension| image:: ../images/chapt3_img26_Trouble_extension.png
.. |collapsed| image:: ../images/chapt3_img29_Trouble_collapsed.png
