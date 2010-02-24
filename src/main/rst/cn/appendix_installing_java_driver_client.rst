Java客户端配置
--------------

通常Selenium-RC在任何Java IDE下的配置依照以下步骤：

* 从SeleniumHQ `下载页面`_ 下载Selenium-RC
* 启动Java IDE
* 新建工程
* 把selenium-java-client-driver.jar添加到工程的classpath
* 用Selenium-IDE录制你的测试并把它翻译成Java代码（Selenium-IDE有翻译功能，
  可以把测试翻译成多种语言）
* 从控制台运行Selenium Server
* 在IDE中运行你的测试

这些要点的描述参考Eclipse和IntelliJ:

.. _configuring-selenium-RC-eclipse-cn-reference:

Selenium-RC在Eclipse中的配置
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
**Eclipse** 是一个多语言的软件开发平台，由IDE和可扩展的插件系统组成。
它主要由Java编写并用于开发Java语言的应用程序。依靠各种插件，它也可以开发其他语言的应用程序，
例如C/C++、Cobol、Python、Perl、PHP等。

下面几行介绍了Selenium-RC在Eclipse - Version: 3.3.0. (Europa Release)中的配置。
它应该不会在高版本的Eclipse中有很大的不同。

* 启动Eclipse。
* 选择文件>新建>其他。

.. image:: ../images/chapt5_img03_Launch_Eclipse.png
   :align: center

* Java>Java工程>下一步 

.. image:: ../images/chapt5_img04_Create_Java_Project.png
   :align: center

* 命名你的工程，选择'Use a project Specific JRE'选项作为JDK（这个例子中选择JDK1.5）>点击下一步

.. image:: ../images/chapt5_img05_Create_Java_Project.png
   :align: center

* 保持'Java Settings'原封不动进入下一窗口。工程特有类库将添加在这里。（在文档的后半部分详细描述。）

.. image:: ../images/chapt5_img06_Create_Java_Project.png 
   :align: center

* 点击完成>在'Open Associated Perpective'弹出窗口点击Yes。

.. image:: ../images/chapt5_img07_Create_Java_Project.png 
   :align: center

这样Google工程就创建在浏览器/导航面板。

.. image:: ../images/chapt5_img08_Package_Explorer.png 
   :align: center

* 右键点击src文件夹，然后选择新建>文件夹

.. image:: ../images/chapt5_img09_Create_Com_Package.png 
   :align: center

把这个文件夹命名为com，然后点击完成按钮。

* 这将使得com包在src文件夹内。

.. image:: ../images/chapt5_img10_Create_Com_Package.png 
   :align: center

* 依照同样的步骤在 *com* 内创建 *core*

.. image:: ../images/chapt5_img11_Create_Core_Package.png 
   :align: center

SelTestCase类应该放在 *core* 包内。

在 *src* 文件夹内再创建一个包命名为 *testscripts* 。这将是放测试脚本的地方。

*请注意这是关于工程的组织结构，它完全依赖个人选择和组织标准。将来测试脚本包可能根据工程需求被拆分。*

.. image:: ../images/chapt5_img12_Create_Test_Script_Package.png 
   :align: center

* 在Google工程内创建lib文件夹。右键点击工程名称>新建>文件夹。这是存放工程jar文件的地方
  （例如Selenium client driver、Selenium server等）

.. image:: ../images/chapt5_img13_Create_Library_Package.png
   :align: center

这将在工程目录中创建lib文件夹。

.. image:: ../images/chapt5_img14_Create_Library_Package.png
   :align: center

* 右键点击 *lib* 文件夹>构建路径>配置构建路径 

.. image:: ../images/chapt5_img15_Configure_Build_Path.png
   :align: center

* 在Library标签中点击添加外部Jar按钮打开jar文件保存的目录。选择需要添加jar文件然后点击打开按钮。

.. image:: ../images/chapt5_img16_Configure_Build_Path.png
   :align: center

.. note: Here in Selenium Server, Selenium Java Client driver and TestNG jar 
   files have been added. TestNG is a testing framework which can be used to
   build selenium tests. As an alternative to TestNG, JUnit jar can be added to
   write selenium tests. 

在添加jar文件之后点击OK按钮。 

.. image:: ../images/chapt5_img17_Configure_Build_Path.png
   :align: center

所添加的类库将出现在包浏览器中，如下所示：

.. image:: ../images/chapt5_img18_Configure_Build_Path.png
   :align: center
   
   
.. _configuring-selenium-RC-Intellij-cn-reference:   

Selenium-RC在Intellij中的配置
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
**IntelliJ IDEA** 是一款商业Java IDE，由JetBrains公司开发。
Intellij提供一组集成的重构工具，使得开发人员可以快速重新设计他们的代码。
Intellij IDEA提供了对开源开发工具的紧密集成，例如CVS、Subversion、Apache Ant和Junit。

下面的几行说明了Selenium-RC在Intellij 6.0中的配置。
它应该不会在高版本的intelliJ中有很大的不同。

* 在IntelliJ IDEA中打开一个新工程。

.. image:: ../images/chapt5_img28_Create_New_Project.png
   :align: center
     
* 提供工程的名称和编译器。

.. image:: ../images/chapt5_img28_Name_Project.png
   :align: center
   
* 点击下一步，然后提供编译器输出路径。

.. image:: ../images/chapt5_img29_Compiler_Output.png
   :align: center 
   
* 点击下一步，然后选择所用的JDK。   

.. image:: ../images/chapt5_img30_JDK_Selection.png
   :align: center

* 点击下一步，然后选择单模块工程。

.. image:: ../images/chapt5_img31_Single_module.png
   :align: center
   
* 点击下一步，然后选择Java模块。

.. image:: ../images/chapt5_img32_Java_module.png
   :align: center


* 点击下一步，然后提供模块名称和模块目录的根路径。

.. image:: ../images/chapt5_img33_Module_Root.png
   :align: center
   

* 点击下一步，然后选择源代码目录。   

.. image:: ../images/chapt5_img34_Src.png
   :align: center
   
* 最后点击完成。这将启动工程面板。

.. image:: ../images/chapt5_img34_Project_Pan.png
   :align: center
   

**给工程添加类库:**

* 点击工程工具栏上的 *设置*  按钮。

.. image:: ../images/chapt5_img35_Add_Lib.png
   :align: center

* 点击设置面板的 *工程结构* 。 

.. image:: ../images/chapt5_img36_Proj_Struct.png
   :align: center
   
* 在工程组织中选择 *模块* ，然后浏览 *依赖* 标签。   

.. image:: ../images/chapt5_img37_Dependencies.png
   :align: center
   
* 点击添加按钮，然后点击模块类库。  

.. image:: ../images/chapt5_img38_Module_Library.png
   :align: center

* 浏览到Selenium目录，然后选择selenium-java-client-driver.jar和selenium-server.jar
  （多Jar包选择可以通过按住控制键完成。）。

.. image:: ../images/chapt5_img39_Library_Files.png
   :align: center
   
* 选择工程里的两个Jar文件，然后点击 *应用* 按钮。   

.. image:: ../images/chapt5_img40_Add_Jars.png
   :align: center
   
   
* 现在点击工程结构面板的OK按钮，然后点击工程设置面板的关闭按钮。
  所添加的Jar包将出现在工程类库中，如下所示。

.. image:: ../images/chapt5_img41_Added_Jars.png
   :align: center
   
* 在src文件夹中创建目录结构，如下所示。   

.. image:: ../images/chapt5_img42_Project_Directories.png 
   :align: center
   
.. note:: 这不是硬性惯例，不同的工程可能有所变化。


* 鉴于 *core* 包含了用于创建Selenium对象和启动浏览器的SelTestCase类。
  *testscripts* 包包含继承SelTestCase类的测试类。因此展开结构如下所示。
  
.. image:: ../images/chapt5_img43_Project_Structure.png
   :align: center 
   

.. _`下载页面`: http://seleniumhq.org/download/

