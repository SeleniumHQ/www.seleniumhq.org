Selenium基础 
============

.. _chapter02-cn-reference:

从这里开始 -- 选择你的Selenium工具
-----------------------------------------------
许多人都是从Selenium-IDE开始的。这也是我们推荐的。
它是一种熟悉Selenium命令的简易方式。
Selenium-IDE还非常容易安装。
具体参考 :ref:`chapter on Selenium-IDE <chapter03-cn-reference>` 

你还可以从Selenium-IDE运行你的脚本。它使用方便，适合技术不高的用户。
这个IDE允许开发和运行测试，但并不需要Selenium-RC所需的编程技能。
Selenium-IDE为训练测试自动化的初级员工提供了杰出的方式。
如果有人了解如何实施网站的手工测试，他就可以非常容易地过渡到使用Selenium-IDE运行和开发测试。

有些测试任务对Selenium-IDE来说非常复杂。
当需要编程逻辑的时候，就必须使用Selenium-RC。
例如任何需要迭代的测试，像检查变长列表中的每个元素，就需要编程语言运行脚本。
Selenium-IDE不支持迭代和条件语句。

最后，Selenium-Core是运行测试的另一种方式。通过网页浏览器，测试脚本可以使用HTML接口 *TestRunner.html* 运行。这是运行Selenium命令的最初的方法。但它有局限。和Selenium-IDE类似，它不支持迭代。

Selenium-Core还不能在http协议和https协议之间切换。
因为有了Selnium-IDE和Selenium-RC的开发，更多人使用它们而不是Selenium-Core。
到本文档写作之时（09年四月），它还仍然可用，并且可能对一些人来说可能非常适合。
但是Selenium社区鼓励使用Selenium-IDE和RC，不鼓励使用Selenium-Core。
对Selenium-Core的支持会越来越少，并且可能在将来的发布中弃用。


Selenium命令介绍
----------------

Selenium命令 -- Selenese
~~~~~~~~~~~~~~~~~~~~~~~~
Selenium提供了丰富的命令集，支持任何你可以想像的方式全面测试你的网络应用。
这个命令集常被称为 *selenese* 。本质上这些命令创造了一种测试语言。

用Selenium，你可以根据UI元素的HTML标记测试他们是否存在，
测试具体的内容，测试坏链接、输入域、选择列表选项、提交的表单和表格数据以及其他的元素。
此外，Selenium命令支持测试窗口大小、鼠标位置、提示、Ajax功能、弹出窗口、事件处理和许多其他网络应用的功能。
命令参考（在SeleniumHQ.org可用）列出了所有可用的命令。

*命令* 就是告诉Selenium该做什么。
Selenium命令包含三种“口味”： **动作** ， **访问器** 和 **断言** 。
 
* **动作** 通常是控制应用程序状态的命令。
  他们所做的事情就像“单击此链接”和“请选择该选项”那样。
  如果动作失败了，或者产生错误，当前测试的执行就会停止。

  许多命令可以和"AndWait"后缀一起调用，例如"clickAndWait"。
  这个后缀告诉Selenium，当前动作将导致浏览器访问服务器，
  Selenium应该等待新的网页加载。

* **访问器** 检查应用程序的状态并把结果保存在变量中，例如"storeTitle"。
  他们也常用来自动产生断言。

* **断言** 类似访问器，但他们验证应用程序的状态是否符合期望。
  例子包括“确保页面标题是X”和“验证复选框被勾选了”。

  所有的Selenium断言包含三种模式： "assert"，"verify"和"waitFor"。
  例如，你可以"assertText"，"verifyText"和"waitForText"。
  当"assert"失败时，测试就会中止。当"verify"失败时，测试会继续进行，并记录失败。
  这使得单一的"assert"可以确保应用程序在正确的页面上，
  紧接着的一串"verify"断言可以检验表单字段值、标签等。

  "waitFor"命令等待一些条件成真（可用于测试Ajax应用程序）。如果条件为真，他们会马上继续。
  然而，如果在当前的超时时间设置内（参考下面的setTimeout动作），条件还不能为真，他们会失败并停止测试。
  
.. Peter: setTimeout doesn't yet exist in this document. I'll assume it's 
   going in the Commonly Used Selenium Commands section. Is there somewhere
   else this should link to?

脚本语法 
~~~~~~~~
Selenium命令很简单，包括命令和两个参数。
例如：

==========  ===========  =====
verifyText  //div//a[2]  Login 
==========  ===========  =====

参数并不总是必须的，而视命令而定。有些情况两个参数都是必须的。
有些情况一个参数是必须的，另外的情况命令根本不需要参数。
这里有几个例子：
  
=================  ===========   =======================
goBackAndWait 
verifyTextPresent                Welcome to My Home Page 
type               id=phone      \(555\) 666-7066 
type               id=address1   ${myVariableAddress} 
=================  ===========   =======================
 
命令的参考描述了每个命令的参数要求。 
  
参数不相同，但它们有代表性：
  
* *定位器* 确定页面内的UI元素。
* *文本模式* 用于验证和断言期望的页面内容
* *文本模式* 或Selenium变量用于在输入字段内输入文字或者列表中选择一个选项。  

定位器、文本模式、selenium变量和命令将在Selenium命令章节有相当详细的描述。

用Selenium-IDE运行的Selenium脚本可能会以HTML文件格式存储。这种格式是一个包含三列的HTML表格。
第一列由于指定Selenium命令，第二列是目标，最后一列包含数值。第二和第三列可能不是必须的，
这视所选择的命令而定，但是他们应该存在。每一表行代表一条新Selenium命令。这里有一个测试的例子，
它打开一个网页，断言页面标题然后验证页面上的内容：
           
.. code-block:: html

   <table>
       <tr><td>open</td><td></td><td>/download/</td></tr>
       <tr><td>assertTitle</td><td></td><td>Downloads</td></tr>
       <tr><td>verifyText</td><td>//h2</td><td>Downloads</td></tr>
   </table>

转换成浏览器中的表格如下：

===========  ====  ==========
open               /download/
assertTitle        Downloads
verifyText   //h2  Downloads
===========  ====  ==========

用Selenese HTML语法编写和运行测试不需要编程语言的知识。
运用Selenese和Selenium-IDE的基础知识，你可以快速的创造和运行测试用例。
   
测试套件
--------
测试套件是测试的集合。通常人们会把所有测试放到一个测试套件中，并作为一个连续的批处理作业。

当使用Selenium-IDE，测试套件也被定义成一个简单的HTML文件。语法也是很简单。
一个HTML表格定义了一个测试列表，每一行定义了每个测试的文件系统路径。例子能说明一切。

.. code-block:: html

      <html> 
      <head> 
      <title>Test Suite Function Tests - Priority 1</title> 
      </head> 
      <body> 
      <table> 
        <tr><td><b>Suite Of Tests</b></td></tr> 
        <tr><td><a href="./Login.html">Login</a></td></tr> 
        <tr><td><a href="./SearchValues.html">Test Searching for Values</a></td></tr> 
        <tr><td><a href="./SaveValues.html">Test Save</a></td></tr> 
      </table> 
      </body> 
      </html>  

像这样的文件可以一次运行所有的测试，一个接一个的通过Selenium-IDE执行。

测试套件还可以用Selenium-RC维护。维护可以通过编程实现也有许多的方法。如果使用Selenium-RC和Java，
Junit通常用于维护测试套件。此外，如果选择C#语言，会使用Nunit。如果使用解释语言例如Python加Selenium-RC，
简单的编程将参与建立测试套件。使用Sel-RC的全部原因就是在你的测试中利用编程逻辑，而这通常不是一个问题。

常用的Selenium命令
------------------
作为Selenium介绍的总结，我们将向你展示一些典型的Selenium命令。这些可能是构建测试最常用的命令。

open
   通过URL打开网页。
click/clickAndWait
   执行单击操作，同时等待新页面加载。
verifyTitle/assertTitle
   验证期望的网页标题。
verifyTextPresent
   验证网页中有期望的文本。
verifyElementPresent
   验证通过HTML标记定义的期望UI元素在页面中存在。
verifyText
   验证期望文本，同时它对应的HTML标记在页面中存在。
verifyTable
   验证表格期望的内容。
waitForPageToLoad
   暂停执行直到期望的新页面加载完成。当clickAndWait使用时会自动调用。
waitForElementPresent
   暂停执行直到通过HTML标记定义的期望UI元素在页面中存在。 

总结 
----
现在你已经看过了Selenium介绍，就可以开始写你的第一个脚本。
我们建议以Selenium-IDE和它的上下文敏感的右键菜单开始。
这将使你很快熟悉最常见的Selenium命令，你可以在一两分钟内写完一个简单的脚本。
从第3章开始，你会熟悉Selenium-IDE的所有功能。
