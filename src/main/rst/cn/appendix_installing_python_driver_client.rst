客户端驱动在Python中的配置 
--------------------------

.. _configuring-selenium-RC-python-cn-reference:

* 从 `下载页面`_ 下载Selenium-RC
* 从 *selenium-java-client-driver.jar* 提取文件
* 打开你喜欢的IDE (Eclipse、IntelliJ、Netweaver等)
* 创建一个新工程
* 把 *selenium-java-client-driver.jar* 添加到工程classpath
* 用Java编写你的Selenium测试
* 在控制台运行Selenium Server
* 在IDE中执行你的测试

以下步骤描述了基本的安装过程。
此后，你可以开始使用你喜欢的IDE开发测试，
（甚至在文本处理器中编写测试在用命令行运行他们！）
而不需要任何额外的工作（至少是Selenium的部分）。

* 安装Python


    .. note:: 这只涵盖python在Windows和Mac的安装，
       因为大多数linux发行中，python已经是默认预安装的。
 
    * Windows
    
      1. 从ActiveState的官方网站下载Active python的安装程序: 
         http://activestate.com/Products/activepython/index.mhtml 
      2. 运行下载的安装程序 (ActivePython-x.x.x.x-win32-x86.msi)

..

      .. image:: ../images/chapt5_img19_Python_Install.png
         :align: center

..

      .. image:: ../images/chapt5_img22_Python_Install.png
         :align: center

..

    * Mac
    
      最新的Mac OS X版本(Leopard)已经预装Python。
      要安装额外的Python，先从 http://www.pythonmac.org/ 
      得到通用二进制文件(packages for Python 2.5.x)。
      你将得到一个可以装载的.dmg文件。它包含了可以运行的.pkg文件。

      .. image:: ../images/chapt5_img19_Python_Mac_Install.png
         :align: center
	
* 为Python安装客户端驱动

    1. 从 `下载页面`_ 下载最新的Selenium-RC
    2. 从下载的.zip文件中提取文件
    3. 把适用于Python的Selenium客户端驱动(selenium.py)模块复制到文件夹 *C:/Python25/Lib* 
       (这将使得客户端驱动可以导入到任何你编写的脚本中)。

       你会在提取的文件夹中找到这个模块，它在 *selenium-python-driver-client* 中。

    .. image:: ../images/chapt5_img25_Python_Driver_Install.png
       :align: center

恭喜你，你就大功告成了！现在，任何你创建的Python脚本，可以导入Selenium，并开始与浏览器交互。

.. _`下载页面`: http://seleniumhq.org/download/
