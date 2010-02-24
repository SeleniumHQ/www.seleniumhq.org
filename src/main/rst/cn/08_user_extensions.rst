.. _chapter08-cn-reference:

用户扩展
========

*NOTE:  This section is close to completion, but it has not been reviewed and 
edited.*

介绍
----
扩展Selenium是非常容易的，它可以添加你自己的动作、断言和定位器策略。
它的实现是通过Javascript向Selenium对象原型和PageBot对象原型添加方法。
通过命名模型识别动作、断言和定位器，Selenium会在启动的时候自动查找这些原型的方法。
下面的例子试着说明Selenium是如何使用Javascript扩展的。

动作
----

所有在Selenium原型中以"do"开头的方法都作为动作添加。
对于每一个动作，例如foo，也都有一个fooAndWait注册。
一个命令可以有两个参数，他们将作为测试的第二列和第三列传递。
例如：向Selenium添加"typeRepeated"动作，它将在文本框中输入文本两次。

.. code-block:: javascript

        Selenium.prototype.doTypeRepeated = function(locator, text) {
            // All locator-strategies are automatically handled by "findElement"
            var element = this.page().findElement(locator);

            // Create the text to type
            var valueToType = text + text;

            // Replace the element text with the new text
            this.page().replaceText(element, valueToType);
        };
        
访问器/断言
-----------
所有在Selenium原型中的getFoo和isFoo方法都将作为访问器（storeFoo）添加。
每一个访问器都有相应的assertFoo、verifyFoo和waitForFoo注册。
一个断言方法有两个参数，他们将作为测试的第二列和第三列传递。
你也可以定义你自己的断言，只需直接定义"assert"方法，他们也会自动产生"verify"和"waitFor"命令。
例如：添加valueRepetaed断言，以确保元素值重复了所提供的文本。
两个在测试中可用的命令将是assertValueRepeated和verifiyValueRepeated。

.. code-block:: javascript

        Selenium.prototype.assertValueRepeated = function(locator, text) {
            // All locator-strategies are automatically handled by "findElement"
            var element = this.page().findElement(locator);

            // Create the text to verify
            var expectedValue = text + text;

            // Get the actual element value
            var actualValue = element.value;

            // Make sure the actual value matches the expected
            Assert.matches(expectedValue, actualValue);
        };

针对每条getFoo命令都自动可用的storeFoo、assertFoo、assertNotFoo、waitForFoo和waitForNotFoo
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
所有在Selenium原型中的getFoo和isFoo方法都自动地使得storeFoo、assertFoo、assertNotFoo、
verifyFoo、verifyNotFoo、waitForFoo和waitForNotFoo命令可用。
例如，如果你添加 ``getTextLength()`` 方法，下面的命令就自动的可用： 
``storeTextLength`` 、 ``assertTextLength`` 、``assertNotTextLength`` 、
``verifyTextLength`` 、 ``verifyNotTextLength`` 、 ``waitForTextLength`` 
和 ``waitForNotTextLength`` 命令。

.. code-block:: javascript

        Selenium.prototype.getTextLength = function(locator, text) {
            return this.getText(locator).length;
        };

还请注意上面提到的 ``assertValueRepeated`` 方法，已经通过 ``isValueRepeated`` 实现。
而这带来的好处是assertNotValueRepeated、storeValueRepeated、waitForValueRepeated
和waitForNotValueRepeated也会自动实现。

定位器策略
----------
所有在PageBot原型中的locateElementByFoo方法都会增加定位器策略。
一个定位器策略有两个参数，第一个是定位器字符串（去掉前缀），第二个是搜索的文档。
例子：增加"valuerepeated="定位器，将寻找第一个这样的元素，它的数值属性是重复了一遍的提供数值。

.. code-block:: javascript

        // The "inDocument" is a the document you are searching.
        PageBot.prototype.locateElementByValueRepeated = function(text, inDocument) {
            // Create the text to search for
            var expectedValue = text + text;

            // Loop through all elements, looking for ones that have 
            // a value === our expected value
            var allElements = inDocument.getElementsByTagName("*");
            for (var i = 0; i < allElements.length; i++) {
                var testElement = allElements[i];
                if (testElement.value && testElement.value === expectedValue) {
                    return testElement;
                }
            }
            return null;
        };

在Selenium-IDE中使用用户扩展
---------------------------------------
在elenium IDE中，用户扩展非常易于使用。
 
1. 建立你的用户扩展并把它保存为user-extensions.js。技术上这不是必须的，但保持一致是好的实践。
2. 打开FireFox和Selenium-IDE
3. 点击工具菜单，选择选项
4. 在Selenium Core扩展窗口中，点击浏览按钮，找到user-extensions.js文件，点击确定。
5. 你的用户扩展还没有被加载，你必须关闭并重启Selenium-IDE。
#. 在空白的测试中，新建一条命令，你的用户扩展就应该作为选项出现在命令下拉列表中。


在Selenium RC中使用用户扩展
--------------------------------------
如果你在Google上搜索"Selenium RC user-extension"十次，你将会得到十种不同的使用这个功能的方法。
下面的是Selenium官方推荐的方法。

例子
~~~~
**C#**

1. 把用户扩展放到与Selenium Server相同的文件夹。
2. 如果你的客户端代码是由Selenium-IDE产生，你需要做些小修改。
   首先你需要在类域范围中创建一个 ``HttpCommandProcessor`` 对象
   （在SetupTest方法外，在 ``private StringBuilder verificationErrors`` 下面）。

.. code-block:: c#

	HttpCommandProcessor proc;

3. 接下来，就像实例化 ``DefaultSelenium`` 对象那样实例化 ``HttpCommandProcessor`` 对象。
   它的实现如下。

.. code-block:: c#

	proc = new HttpCommandProcessor("localhost", 4444, "*iexplore", "http://google.ca/");

4. 用你创建的 ``HttpCommandProcessor`` 对象实例化DefaultSelenium对象。

.. code-block:: c#

	selenium = new DefaultSelenium(proc);

5. 在你的测试代码中，执行用户扩展是通过 ``HttpCommandProcessor`` 的 ``DoCommand()`` 方法调用的。
   这个方法有两个参数：一个是指定你想使用的用户扩展方法的字符串，另一个是传递参数的字符串数组。
   不管在用户扩展中函数是否首字母大写，注意你的函数的第一个字母必须是小写。因为JavaScript是大小写敏感的，
   所以如果你的命令首字母大写，你的测试就会失败。inputParams是一个参数数组，
   这些参数就是传递给JavaScript用户扩展的。在这个例子中，数组中只有一个字符串，因为用户扩展只有一个参数。
   但是长数组将每个索引都映射到与用户扩展相对应的参数。请记住为Selenium-IDE设计的用户扩展只有两个参数。


.. code-block:: c#

	string[] inputParams = {"Hello World"};
	proc.DoCommand("alertWrapper", inputParams);

6. 用 ``-userExtensions`` 参数启动测试服务器，并把你的 ``user-extensinos.js`` 文件传递给它。

.. code-block:: bash

	java -jar selenium-server.jar -userExtensions user-extensions.js


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
				private HttpCommandProcessor proc;

				[SetUp]
				public void SetupTest()
				{
					proc = new HttpCommandProcessor("localhost", 4444, "*iexplore", "http://google.ca/");
					selenium = new DefaultSelenium(proc);
					//selenium = new DefaultSelenium("localhost", 4444, "*iexplore", "http://google.ca/");
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
					string[] inputParams = {"Hello World",};
					proc.DoCommand("alertWrapper", inputParams);
				}
			}
		}


    End
