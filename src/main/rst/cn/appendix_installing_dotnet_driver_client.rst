客户端驱动在.NET环境中的配置
----------------------------

.. _configuring-selenium-RC-NET-cn-reference:

.NET客户端驱动是用于Microsoft Visual Studio的。
在Visual Studio中的配置如下：

* 启动Visual Studio，然后导航到文件>新建>工程。
  
  .. image:: ../images/chapt5_img01_Launch_VisualStudio.png
     :align: center
      
..

* 选择Visual C#>类库>命名你的工程>点击OK按钮。

  .. image:: ../images/chapt5_img02_CreateProject.png
     :align: center
  
..

* 一个类(.cs)已经创建了，给它恰当的名字。

  .. image:: ../images/chapt5_img03_TestClassFile.png
    :align: center

..

* 在右侧的解决方案浏览器面板中右键点击引用>添加引用。

  .. image:: ../images/chapt5_img04_AddReference.png
    :align: center

..

*  选择下面的dll文件 - 
   nmock.dll, nunit.core.dll, nunit.framework.dll,ThoughtWorks.
   Selenium.Core.dll, ThoughtWorks.Selenium.IntegrationTests.dll,
   ThoughtWorks.Selenium.UnitTests.dll。然后点击OK按钮。
   
   .. image:: ../images/chapt5_img05_AddDlls.png
      :align: center

至此，Visulal Stuido已经准备好开发Selenium测试用例。
