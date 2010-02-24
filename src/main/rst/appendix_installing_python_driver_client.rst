Python Client Driver Configuration 
----------------------------------

.. _configuring-selenium-RC-python-reference:

* Download Selenium-RC from the SeleniumHQ `downloads page`_ 
* Extract the file *selenium.py*
* Either write your Selenium test in Python or export
  a script from Selenium-IDE to a python file.
* Add to your test's path the file *selenium.py*
* Run Selenium server from the console
* Execute your test from a console or your Python IDE 

The following steps describe the basic installation procedure. After following 
this, the user can start using the desired IDE, (even write tests in a text 
processor and run them from command line!) without any extra work (at least 
on the Selenium side).

* Installing Python

    .. note:: This will cover python installation on Windows and Mac only, as 
       in most linux distributions python is already pre-installed by default. 

    * Windows
    
      1. Download Active python's installer from ActiveState's official site: 
         http://activestate.com/Products/activepython/index.mhtml 
      2. Run the installer downloaded (ActivePython-x.x.x.x-win32-x86.msi)

..

      .. image:: images/chapt5_img19_Python_Install.png
         :class: align-center

..

      .. image:: images/chapt5_img22_Python_Install.png
         :class: align-center

..

    * Mac
    
      The latest Mac OS X version (Leopard at this time) comes with Python 
      pre-installed. To install an extra Python, get a universal binary at 
      http://www.pythonmac.org/ (packages for Python 2.5.x). You will get a 
      .dmg file that you can mount. It contains a .pkg file that you can launch.

      .. image:: images/chapt5_img19_Python_Mac_Install.png
         :class: align-center
	
* Installing the Selenium driver client for python 

    1. Download the last version of Selenium Remote Control from the 
       `downloads page`_
    2. Extract the content of the downloaded zip file 
    3. Copy the module with the Selenium's driver for Python (selenium.py)
       in the folder *C:/Python25/Lib* (this will allow you to import it 
       directly in any script you write).

       You will find the module in the extracted folder, it's located inside 
       *selenium-python-driver-client*.

    .. image:: images/chapt5_img25_Python_Driver_Install.png
       :class: align-center

Congratulations, you're done! Now any python script that you create can import
selenium and start interacting with the browsers.

.. _`downloads page`: http://seleniumhq.org/download/
