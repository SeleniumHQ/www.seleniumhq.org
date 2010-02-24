"Selenese" Selenium 命令集
=============================

.. _chapter04-cn-reference:

Selenium 命令集,通常称作 *selenese*,是运行你的测试的一组命令集合。
这些命令的序列就是 *测试脚本*.
现在我们详细解释一下这些命令,并向您展示许多用selenium测试web应用的精选例子。


验证页面元素
------------------------
验证页面上的 *UI元素* 或许是做自动化测试最常用到的功能.
Selenese 允许多种方式验证UI元素。
理解这些不同的方法是很重要的，因为这些方法定义了你真正要测试的是什么。

例如，你将会测试：

a) 一个元素是否出现在页面中的某个地方？
b) 特定文本是否出现在页面中某个地方？
c) 特定文本是否出现在页面上特定的位置？

例如，如果你测试文本标题，它内容和它在页面顶部的位置可能与你的测试有关。
然而，如果你测试的是在主页存在的一个图片,网站设计者经常改变这个图片在这个也页面上的位置，
如果你只是想测试 *一个图片*（这个图片文件）存在 *页面上的某个位置*
   
   
判言还是验证?
~~~~~~~~~~~~~~~~~~~~~~~~~~
选择使用 **断言** 还是 **验证** 取决于方便性和对失败的管理方式.
如果测试本章节页是正确的那页，而且当检查浏览器中显示的是你想要的那页的测试 
已经不通过了，这种情况这两个方法差别是很小的。如果不是正确的那页
你或许想终止这个测试， 
及时地找出原因并解决其中问题.另外,
你可能想检查页面上的很多属性，当第一个执行不通过，而不需要终止这个测试用例 
同时允许你看到所有这个页面上执行不通过的情况，然后采取适当的措施。 
使用 **assert** 将此测试用例执行不通过并终止. 
而 **verify** 将继续执行这个测试用例到结束，并告知这个测试用例不通过. 

使用这个功能的最好办法是给你的测试命令集分组，并且每一组以一个 **断言** 紧跟着
一个或多个 **验证** 命令。例如:

============    ==========  ============
open            /download/      
assertTitle     Downloads       
verifyText      //h2        Downloads       
assertTable     1.2.1       Selenium IDE    
verifyTable     1.2.2       June 3, 2008    
verifyTable     1.2.3       1.0 beta 2      
============    ==========  ============

上面的例子中，首先打开一个页面，然后通过比较页面标题与期望的值来 **断言** 正确的
页面已经加载。
只有断言通过，接下来的命令将继续执行,即 **验证** 文本出现在特定的位置上。
接着测试用例 **断言** 第一个表中第一列第二行包含期望的数值,
只有断言通过，那行中剩余的方格才会被 **验证** 。


verifyTextPresent
~~~~~~~~~~~~~~~~~
命令 ``verifyTextPresent`` 用来验证 *在页面上某地方存在一个特定文本* 。
它包含一个参数--要验证的文本模式。
例如:

=================   ==================   ============
verifyTextPresent   Marketing Analysis 
=================   ==================   ============

这条命令促使Selenium寻找并验证 "Marketing Analysis" 文本出现在当前要测页面的某个地方。
当你想验证某个页面上存在而且只存在某个文本时用 ``verifyTextPresent`` 。
当你需要测试文本存在页面的位置时，不要用这个命令.

verifyElementPresent
~~~~~~~~~~~~~~~~~~~~
当你需要测试某个特定UI元素存在时用这个命令.
而不是验证这个元素的内容.这个验证不去检查文本，
而是检查HTML标签.一个通常的应用是一个检查一个图片是否存在.

====================   ==================   ============
verifyElementPresent   //div/p/img               
====================   ==================   ============
   
这个命令验证一个图片，<img>标签是否在某个特定页面存在
这个标签在一个<div>标签和<p>标签后面.
开头第一个参数是一个 *定位符* 告诉Selenese命令怎么去找这个元素.
定位符将在下部分说明.

``verifyElementPresent`` 能用来检查在页面中任何HTML 标签是否存在，
例如链接,段落,<div>分割等等.
下面是更多的例子.

====================   ==============================   ============
verifyElementPresent   //div/p 
verifyElementPresent   //div/a               
verifyElementPresent   id=Login
verifyElementPresent   link=Go to Marketing Research               
verifyElementPresent   //a[2]
verifyElementPresent   //head/title
====================   ==============================   ============

这些例子说明了测试UI元素的各种不同的方法。
再次说明,定位符将在下部分说明.

verifyText
~~~~~~~~~~
.. TODO mam-p:  Why the parenthetical limitation on locator type below?  The locator could also be name=, id=, identifier=, etc.

当文本和它的UI元素都必须要测试时，使用``verifyText``.
``verifyText`` 必须使用一个locator,如果你选择一个 *XPath* 或者 *DOM* 的定位符,
你可以验证在页面上某个特定位置有某个特定文本，相对于这个页面上其它的UI组件.


==========   ===================    ===================================================================
verifyText   //table/tr/td/div/p    This is my text and it occurs right after the div inside the table.
==========   ===================    ===================================================================


.. _locators-section:

定位元素
-----------------
对许多Selenium命令，一个目标是必须的.这个目标等同于在web应用内容中的一个元素,
它由定位策略和跟随其后的定位值组成，其形式为 ``locatorType=location`` 。
定位符类型在许多情况下可以忽略.
不同的定位符类型将在以下例子中以此讲述.

.. Santi: I really liked how this section was taken. But I found that most of
   the locator strategies repeat the same HTML fragment over a over. Couldn't
   we put A example HTML code before starting with each strategie and then use
   that one on all of them?

默认定位符
~~~~~~~~~~~~~~~~
在以下情况下你可以选择忽略定位符类型:
 
 - 定位符以 "document"开头, 将使用DOM定位符策略.
   参见 :ref:`通过dom定位` 。

 - 定位符 以 "//" 开头,将使用XPath定位符策略.
   参见 : ref:`通过xpath定位` 。

 - 定位符以除了以上的其它或者不是以合法定位符类型开头,
   将默认为用identifier定位符策略。
   参见 : ref:`identifier通过定位` 。

.. _通过identifier定位:

通过identifier定位:
~~~~~~~~~~~~~~~~~~~~~~
这或许是最常用的定位元素的方法,也是当没有被识别的定位符类型使用时，默认使用的方法
使用这种方法，id属性值与定位值相匹配的第一个元素将被使用。
如果没有元素拥有与之相配的id属性，那么name属性值与定位值相匹配的第一个元素
将被使用。

例如, 页面可能有如下id和name属性:
           
.. code-block:: html
  :linenos:

  <html>
   <body>
    <form id="loginForm">
     <input name="username" type="text" />
     <input name="password" type="password" />
     <input name="continue" type="submit" value="Login" />
    </form>
   </body>
  <html>

接下来的定位符策略将从以上HTML片段按行号返回元素:

- ``identifier=loginForm`` (3)
- ``identifier=username`` (4)
- ``identifier=continue`` (5)
- ``continue`` (5)

因为 ``identifier`` 定位符类型是默认的,  ``identifier=`` 在前三个例子中 
是不必要的.

通过Id定位
~~~~~~~~~~~~~~
这种定位符类型比identifier定位符类型更有限，但是也更加明确。
当你知道一个元素的id属性时使用它。


.. code-block:: html
  :linenos:
  
   <html>
    <body>
     <form id="loginForm">
      <input name="username" type="text" />
      <input name="password" type="password" />
      <input name="continue" type="submit" value="Login" />
      <input name="continue" type="button" value="Clear" />
     </form>
    </body>
   <html>

- ``id=loginForm`` (3)

通过Name定位
~~~~~~~~~~~~~~~~
name定位符类型将定位与name属性相配的第一个元素.
如果一个name属性对应多个有相同值的元素,那么你可以用过滤器去进一步改善你的定位策略.
默认的过滤器类型是vale(与value属性相配).

.. code-block:: html
  :linenos:
  
   <html>
    <body>
     <form id="loginForm">
      <input name="username" type="text" />
      <input name="password" type="password" />
      <input name="continue" type="submit" value="Login" />
      <input name="continue" type="button" value="Clear" />
     </form>
   </body>
   <html>

- ``name=username`` (4)
- ``name=continue value=Clear`` (7)
- ``name=continue Clear`` (7)
- ``name=continue type=button`` (7)

.. note:: 不像XPah和DOM locator类型,以上三种定位符类型允许Selenium测试UI元素，而与它在网页上的位置不相关。
   所以如果页面架构和组织方式改变了,不管你是否想测试页面结构的变化。
   这个测试将仍然通过。web设计者频繁改变页面的情况,但它的功能必须回归测试。
   通过id和name属性或者任何HTML属性测试变得非常重要。

.. _通过xpath定位:

通过XPath定位
~~~~~~~~~~~~~~~~~
XPath是在XML文档中定位节点的语言。
HTML可以作为XML(XHTML)的一个实现,Selenium用户可以借助这个强大的语言在web应用程序中
去寻找元素.XPath扩展了（也同样支持）通过id或者name属性定位的简单方法,
开辟了各种新的可能性，如定位页面上的第三个复选框。

.. Dave: Is it worth mentioning the varying support of XPath (native in 
   Firefox, using Google AJAXSLT or the new method in IE)? Probably an 
   advanced topic if needed at all..?

用XPath的一个主要原因是对于你想定位的元素没有一个合适的id或者name属性。
你可以使用XPath去定位元素用绝对路径(不推荐),或者相对于某个有id或name属性的元素
XPath定位符还可以用在通过不是id和name属性的其它属性定位元素。

绝对路径的XPath包含所有从根(html)开始的所有元素,最终可以因为一个应用程序细微地方的调整而失败.
通过寻找一个相近的有id或者name属性的元素(一个父元素最好了),你可以定位你的目标元素基于它们的关系

这些是很少变化的，可以使得你的测试更健壮。

因为只有 ``xpath`` locator 以 "//"开头,当表明一个XPath locator的时候加 ``xpath`` 标签
是没有必要的。

.. code-block:: html
  :linenos:
  
   <html>
    <body>
     <form id="loginForm">
      <input name="username" type="text" />
      <input name="password" type="password" />
      <input name="continue" type="submit" value="Login" />
      <input name="continue" type="button" value="Clear" />
     </form>
   </body>
   <html>

.. TODO: mam-p:  Is the fourth example below correct?
- ``xpath=/html/body/form[1]`` (3) - *绝对路径 (如果HTML有细微改变的时候将被破坏)*
- ``//form[1]`` (3) - *在HTML中的第一个form元素*
- ``xpath=//form[@id='loginForm']`` (3) - *id属性值是 'oginForm'的form元素*
- ``xpath=//form[input/\@name='username']`` (4) - *第一个form元素：有一个子元素的name属性值是username的input字段*
- ``//input[@name='username']`` (4) - *name属性值是username的input元素*
- ``//form[@id='loginForm']/input[1]`` (4) - *id属性值为loginFomr的form元素中第一个input子字段*
- ``//input[@name='continue'][@type='button']`` (7) - *name属性值为continue,type属性值为button的Input元素*
- ``//form[@id='loginForm']/input[4]`` (7) - *id属性值为loginForm'的form元素的第四个input*

这些例子包括了一些基础,为了学习更多,推荐以下参考:

* `W3Schools XPath Tutorial <http://www.w3schools.com/Xpath/>`_ 
* `W3C XPath Recommendation <http://www.w3.org/TR/xpath>`_
* `XPath Tutorial 
  <http://www.zvon.org/xxl/XPathTutorial/General/examples.html>`_ 
  - 有交互的例子. 

也有很多有用的firefox插件来协助我们发现元素的XPath:

* `XPath Checker 
  <https://addons.mozilla.org/en-US/firefox/addon/1095?id=1095>`_ - XPath建议,
  能用来测试XPath结果. 
* `Firebug <https://addons.mozilla.org/en-US/firefox/addon/1843>`_ -  XPath 
  建议是这个非常有用插件的许多功能中的一个.

通过链接文本定位超链接
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. TODO: mam-p:  Users often are unaware that a link locator is a pattern, 
   not just a string.  So, I think we need an example here that necessitates 
   a link=regexp:pattern locator in the test case.

用链接的文本定位web页面中的超链接，这是一个简单的方法.
如果两个链接在页面上是相同的文本,则第一个匹配的将被使用.

.. code-block:: html
  :linenos:

  <html>
   <body>
    <p>Are you sure you want to do this?</p>
    <a href="continue.html">Continue</a> 
    <a href="cancel.html">Cancel</a>
  </body>
  <html>

- ``link=Continue`` (4)
- ``link=Cancel`` (5)

.. _通过dom定位:

通过DOM定位
~~~~~~~~~~~~~~~

文档对象模型表示一个HTML文档，可使用JavaScript访问。
这种定位策略使用JavaScript计算给页面上的元素.
它通过使用分层级的点号简化元素的定位。

因为只有 ``dom`` locator 以  "document" 开头,因此当用dom locator时没有必要包含 ``dom=`` 
标签.

.. code-block:: html
  :linenos:

   <html>
    <body>
     <form id="loginForm">
      <input name="username" type="text" />
      <input name="password" type="password" />
      <input name="continue" type="submit" value="Login" />
      <input name="continue" type="button" value="Clear" />
     </form>
   </body>
   <html>

- ``dom=document.getElementById('loginForm')`` (3)
- ``dom=document.forms['loginForm']`` (3)
- ``dom=document.forms[0]`` (3)
- ``document.forms[0].username`` (4)
- ``document.forms[0].elements['username']`` (4)
- ``document.forms[0].elements[0]`` (4)
- ``document.forms[0].elements[3]`` (7)

你可以用Selenium或者其它的站点和扩展来捕获web应用程序的DOM.
在 `W3Schools
<http://www.w3schools.com/HTMLDOM/dom_reference.asp>`_  有一个不错的教程. 

通过CSS定位
~~~~~~~~~~~~~~~

CSS (Cascading Style Sheets) 是一种描述HTML和XML文档外观的语言.
CSS使用选择器给文档中的元素加样式属性.这些选择器被Selenium用作另一种定位策略.

.. code-block:: html
  :linenos:

   <html>
    <body>
     <form id="loginForm">
      <input class="required" name="username" type="text" />
      <input class="required passfield" name="password" type="password" />
      <input name="continue" type="submit" value="Login" />
      <input name="continue" type="button" value="Clear" />
     </form>
   </body>
   <html>

- ``css=form#loginForm (3)``
- ``css=input[name="username"]`` (4)
- ``css=input.required[type="text"]`` (4)
- ``css=input.passfield (5)``
- ``css=#loginForm input[type="button"]`` (4)
- ``css=#loginForm input:nth-child(2)`` (5)

要想获得更多关于CSS选择器的信息,最好的地方是去 `the W3C
publication <http://www.w3.org/TR/css3-selectors/>`_.  你将获得更多参考信息.

.. note:: Most experienced Selenium users recommend CSS as their locating
   strategy of choice as it's considerably faster than XPath and can find the 
   most complicated objects in an intrinsic HTML document.
.. note:: 有经验的Selenium用户建议使用CSS作为他们定位策略的一种选择,因为它比
   XPath快速,而且在HTML文档中能找到最复杂的对象.

.. _模式部分:      

文本模式匹配
----------------------

和定位符类似, *模式*  是Selenese命令中经常用到的一种参数类型.
需要模式的命令有:**verifyTextPresent**, **verifyTitle**, **verifyAlert**, 
**assertConfirmation**, **verifyText** 和 **verifyPrompt**.  
上面提及的链接定位符也可以使用模式。模式允许通过使用特定的字符 *描述* 期望的文本，
而不是精确的指定文本.
有三种类型的模式: *通配符*, *正则表达式* 和 *精确*.

通配符模式
~~~~~~~~~~~~~~~~~

很多人熟悉通配符，因为它用在DOS或者Unix/Linux命令行的文件名扩展,像
``ls *.c`` 命令.
在这种情况下,通配符被用来显示所有在当前目录下扩展名为.c 的文件.
通配符处非常有限.
只有两个特殊字符在Selenium实现中被支持:

    **\*** 翻译为 "匹配所有," 就是：空，单个字符，或者多个字符.
    **[ ]** (*字符类*) 翻译为 "匹配在方括号里面的任何单个字符"。
    破折号(连字符)可以作为一种简写方式,来指定一个范围内的字符(这些字符在ASCII字符集中连续),
    以下几个例子可以清楚的说明字符类的功能.

    ``[aeiou]`` 匹配任意小写的元音字符

    ``[0-9]`` 匹配任意一个数字

    ``[a-zA-Z0-9]`` 匹配任意字母和数字字符

在很多其它环境中,通配符包括第三个特殊字符 **?**.
但Selenium 通配符只支持星号和字符类.

在Selenese命令中指定通配符模式参数,需要加一个 **glob:** 标签前缀.
但是，因为通配符模式是默认的,所以你也可以省略掉这个标签而仅仅指定模式本身.

以下例子是用通配符模式的两个命令.实际的在页面上被测的链接文本是 
"Film/Television Department";通过使用一个模式而不是完全的文本, **click**
命令将起作用，即使这个文本变为 "Film & Television Department" 或者
"Film and Television Department".
通配符模式的星号将匹配在单词 "Film" 和单词 "Television"之间的 "任意或空" .

===========   ====================================    ========
click         link=glob:Film*Television Department
verifyTitle   glob:\*Film\*Television\*
===========   ====================================    ========

通过点击链接到达页面的实际标题是 "De Anza Film And Television Department - Menu"。
通过一个模式而不是完全的文本,只要两个字"Film" 和 "Television"在页面标题的任何位置,
命令 ``verifyTitle`` 将会通过.例如,当这页的标题缩短为"Film & Television Department,"
这个测试仍然通过.用一个模式用于链接和测试链接是否工作的简单的测试
(正如上面 ``verifyTitle`` 做的) 能有效的减少这类测试的维护成本.

正则表达式模式
~~~~~~~~~~~~~~~~~~~~~~~~~~~

*正则表达* 模式是Selenese支持的三类模式中功能最强的.
正则表达式在大多高级编程语言中支持,许多文本编辑器以及很多工具,包括
Linux/Unix的命令行工具 **grep**, **sed**和**awk** 也支持.
在Selenese中,正则表达式允许用户完成许多非常复杂的任务.
例如,假设你的测试需要测试确保一个特定表格内只包含数字.
``regexp: [0-9]+`` 是一个匹配任何长度数字的简短模式.

Selenese的通配符模式只支持 **\*** 和 **[ ]** (字符类)功能.
Selenese正则表达式提供在JavaScript存在的特定字符集范围.
以下是这些特殊字符集的一个子集.

=============     ======================================================================
    PATTERN            MATCH
=============     ======================================================================
   .              任意单字符
   [ ]            字符类: 位于括号内的任意字符 
   \*             量词: 0个或多个前面的字符(或组)
   \+             量词: 1个或多个前面的字符(或组)
   ?              量词: 0个或1个前面的字符(或组)
   {1,5}          量词: 1个到5个前面的字符(或组)
   \|             可选: 左边字符/组或右边字符/组
   ( )            分组：往往交替使用和/或量词
=============     ======================================================================

正则表达式在Selenese中需要以 ``regexp:`` 或 ``regexpi:`` 作前缀.  
前面这个是区分大小写的;后面这个不区分大小写.

很多例子将帮助你清晰地来了解正则表达式在Selenese是如何使用的.
第一个或许是最经常用到的正则表达式--**.\***("星号").
这两个字符序列翻译为 "0个或者多个字符"或者更简单的 "有或者没有"
它和一个字符的通配符模式 **\** (单个星号)。

===========   =======================================    ========
click         link=regexp:Film.*Television Department
verifyTitle   regexp:.\*Film.\*Television.\*
===========   =======================================    ========

上面这个例子和之前用通配符模式用于同一个测试的实现的功能相同.
唯一的不同是前缀(**regexp:** 而不是 **glob:**) 和 "有或者没有"模式(
**.\*** 而不是 **\***).

下面这些更复杂些的测试例子是yahoo! 天气页导航, Alaska日出的信息:

==================  ===============================================    ========
open                http://weather.yahoo.com/forecast/USAK0012.html
verifyTextPresent   regexp:Sunrise: \*[0-9]{1,2}:[0-9]{2} [ap]m
==================  ===============================================    ========

让我们测试以上正则表达式一个时间:

==============   ====================================================
``Sunrise: *``   字符串 **Sunrise:** 后一个或者多个空格
``[0-9]{1,2}``   1个或者2个数字(一天中的小时)
``:``            字符 **:** (不涉及特殊字符)
``[0-9]{2}``     2个数字(分钟) 跟着1个空格
``[ap]m``        "a" 或者 "p" 跟着1个 "m" (am 或者 pm)
==============   ====================================================

精确模式
~~~~~~~~~~~~~~

Selenium 模式的 **精确** 类型用处比较有限.
它完全没有特殊字符.所以,如果想找一个真实的星号字符(这个字符对通配符和正则表达式
来说是特殊的), **精确** 模式是一个办法.例如,如果想选择在下拉框中的含有 "Real \*" 
的一个标签,下面的代码将可以或者不可以.在 ``glob:Real *`` 模式中的星号将匹配所有或者没有.
所以,如果在前面有个"Real Numbers,"标签的选择项.它将选择这个而不是 "Real \*"项.

===========   ====================================    =============
select        //select                                glob:Real \*
===========   ====================================    =============

为了确保"Real \*"项被选中, ``exact:`` 前缀将被用来产生一个 **精确** 模式如下:

===========   ====================================    =============
select        //select                                exact:Real \*
===========   ====================================    =============

但通过在正则表达式对星号转义,也可以达到同样的效果:
 
===========   ====================================    ================
select        //select                                regexp:Real \\\*
===========   ====================================    ================

大多数的测试员很少查找一个星号或者一组带字符的方括号(通配符模式中的字符类).
因此,通配符模式和正则表达式模式对我们大多数人来说足够了.


"AndWait" 命令集

----------------------

一个命令和它的 *AndWait* 可选项的不同在于:一个普通的命令(例如, *click*) 将执行这
个动作，然后接着执行接下来的命令,而 *AndWait* 可选项(例如, *clickAndWait*) 将
告诉Selenium 执行这个命令后 **等待** 页面加载.

.. TODO: mam-p:  I don't believe the following is true, at least in Selenium-
   IDE.  Perhaps it is supposed to be true, but I don't think we should 
   misrepresent the current status. 

*AndWait* 可选项经常用在当这个动作导致浏览器导航到另个页面或者重新加载当前这个页面. 

当心，如果你在不触发导航/刷新的动作上使用 *AndWait* 命令，你的这个测试将失败.
这是因为Selenium在到达 *AndWait* 的时限时还没有看到导航或者刷新的执行,导致Selenium抛出一个
超时异常.
 

解析顺序和流程控制
---------------------------------------

当一个脚步执行的时候,这个脚本是依次执行的,一个命令接着另一个命令.

Selenese本身并不支持条件语句(if-else等) 或者循环语句(for, while等). 
许多有用的测试可以在没有流程控制的情况下执行.
然而,对一个动态内容的功能性测试来说，可能涉及多个页面，编程逻辑的情况是经常需要的.

当流程控制需要的时候,有三种选择:  

a) 用Selenium-RC和例如Java或者PHP的客户端函数库执行脚本，利用编程语言的流程控制功能。
b) 在脚本中用StoreEval命令,运行一个小的JavaScript片段。
c) 安装 `goto_sel_ide.js <http://51elliot.blogspot.com/2008/02/selenium-ide-goto.html>`_ 扩展。

大多数的测试员会把测试脚本导出为一种使用Selenium-RC API(见Selenium-IDE章节)
编写的编程语言文件。
然而,有些组织更乐于尽可能的从Selenium-IDE运行他们的脚本(比如,当他们运行这些脚本的人
是初级水平的或者缺乏编程经验的),如果你是这种情况,可以考虑JavaScript片段或者goto_sel_ide.js扩展。 

 
Store命令集和Selenium 变量
-------------------------------------
可以在脚本的开始用Selenium变量存储常量
当结合数据驱动设计的时候(后面的部分会讨论),Selenium 变量可以用来存储来自命令行、其他程序或者文件的数值并传递给你的测试。
简单的 *store* 命令是许多存储命令的基础,它能用来在Selenium变量中存储一个常量值. 
它需要两个参数,要存储的文本值和selenium变量.   用标准的变量命名规则,即用数字和字母来命名你的
变量.

.. TODO: mam-p:  Why are we telling them the last sentence above?  Any 
   JavaScript identifiershould be okay, no?

=====   ===============   ========
store   paul@mysite.org   userName               
=====   ===============   ========

在你后面的脚本中,你或许想用你的变量的存储值.为了访问变量值，将这个变量用花括号 ({})括在中间, 前面加一个美元符号，像这样：
==========  =======     ===========
verifyText  //div/p     ${userName}               
==========  =======     ===========

一个变量的常见用法是存储input字段的输入值。

====    ========     ===========
type    id=login     ${userName}               
====    ========     ===========

Selenium变量可以用在第一个或者第二个参数中,在命令进行的任何其他操作之前被解释。
Selenium变量还可以被用在一个locator表达式中。

等价的存储命令存在于每个验证和判定中.  以下是经常用到的存储命令。

storeElementPresent 
~~~~~~~~~~~~~~~~~~~
它对应verifyElementPresent。它仅存储一个逻辑值--“是”或者 ”否“--决定于UI元素是否被找到。

storeText 
~~~~~~~~~
StoreText对应verifyText。它使用一个定位符来确定具体的网页文字。
对于这个文本，如果被找到, 就被存到变量中。StoreText能用来从被测页面中抽取文本。

storeEval 
~~~~~~~~~
这个命令以一个脚本作为它的第一个参数。在Selenese中嵌入的Javascript在下一部分涉及。
StorEval允许把脚本的运行结果存储到一个变量中。


JavaScript and Selenese参数
----------------------------------
JavaScript能与两种类型的Selenese参数一起使用,它们是 **脚本** 和 非脚本（通常是表达式）。
大多数情况下,你想访问或控制Javascript代码片段中的测试用例变量，并把它们用做Selenese参数。
由你的测试用例所创建的所有变量存储在一个Javascript的 *关联数组* 中。当你希望使用或管理
一个在Javascript代码段中的变量时，你必须用 **storedVars['yourVariableName']** 指定它。

JavaScript作为脚本参数的用法  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
有些Selenese命令指定一个 **脚本** 参数，包括 **assertEval**, **verifyEval**, 
**storeEval**, 和 **waitForEval**.
这些参数需要非特定语法。Selenium-IDE用户只需把Javascript代码片段放到一个合适的域，，
通常是 **Target** 域（因为一个 **脚本** 参数通常是第一个或者唯一一个参数）。

下面的例子说明了一段Javascript代码是如何被用来执行一个简单的数字计算的:

===============    ============================================   ===========
store              10                                             hits
storeXpathCount    //blockquote                                   blockquotes
storeEval          storedVars['hits']-storedVars['blockquotes']   paragraphs
===============    ============================================   ===========

下一个例子阐述了一段Javascript代码是如何包含方法调用的，这个例子中的方法是Javascript的String对象的 ``toUpperCase`` 方法
和 ``toLowerCase`` 方法.  

===============    ============================================   ===========
store              Edith Wharton                                  name
storeEval          storedVars['name'].toUpperCase()               uc
storeEval          storedVars['name'].toLowerCase()               lc
===============    ============================================   ===========

JavaScript 作为非脚本参数的用法  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Javascript也能用来为参数帮助生成值，即使当参数没有被指定为 **脚本** 类型。
然而，在这种情况下，需要特定语法--Javascript脚本必须在花括号包内，前面加标签
``javascript`` ，类似 ``javascript {*yourCodeHere*}`` 。
以下例子中， ``type`` 命令的第二个参数 ``value`` 是通过用特定语法的Javascript代码产生的。

===============    ============================================   ===========
store              league of nations                              searchString
type               q                                              javascript{storedVars['searchString'].toUpperCase()}
===============    ============================================   ===========

*echo* - Selenese打印命令
------------------------------------
Selenese有一个简单的命令，这个命令可以允许你打印文本到你的测试的输出。
这对提供测试进度记录报告是非常有用的，当你的测试运行的时候这些记录显示在控
制台上。这些记录也能用来提供测试结果报告中的上下文，如果你的测试发现了问题，这些记录有助于查明缺陷在页面中的位置。
最后,echo语句可以用来打印Selenium变量的内容。

=====   ========================   ========
echo    Testing page footer now.    
echo    Username is ${userName}                 
=====   ========================   ========


Alerts, Popups, and Multiple Windows
------------------------------------
*This section is not yet developed.*

.. Paul: This is an important area, people are constantly asking about this 
   on the user group.

AJAX 和waitFor命令
-------------------------

*This section is not yet developed.*

许多应用中使用AJAX的动态和动画功能，使测试AJAX的行为往往是一个基本的测试要求。 

*This section is not yet developed.*



