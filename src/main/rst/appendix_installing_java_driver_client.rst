Java Client Driver Configuration
--------------------------------

In General configuration of Selenium-RC with any java IDE would have following 
steps:

* Download Selenium-RC from the SeleniumHQ `downloads page`_ 
* Start any java IDE
* Create new project
* Add to your project classpath selenium-java-client-driver.jar 
* Record your test from Selenium-IDE and translate it to java code (Selenium
  IDE has automatic translation feature to generate tests in variety of languages)
* Run selenium server from console
* Run your test in the IDE

These points have been delineated below with reference to Eclipse and IntelliJ: 

.. _configuring-selenium-RC-eclipse-reference:

Configuring Selenium-RC With Eclipse
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
**Eclipse** is a multi-language software development platform comprising an IDE 
and a plug-in system to extend it. It is written primarily in Java and is used 
to develop applications in this language and, by means of the various plug-ins, 
in other languages as well as C/C++, Cobol, Python, Perl, PHP and more.

Following lines describes configuration of Selenium-RC with Eclipse - 
Version: 3.3.0. (Europa Release). It should not be too different for higher 
versions of Eclipse 

* Launch Eclipse. 
* Select File > New > Other. 

.. image:: images/chapt5_img03_Launch_Eclipse.png
   :class: align-center

* Java > Java Project > Next 

.. image:: images/chapt5_img04_Create_Java_Project.png
   :class: align-center

* Provide Name to your project, Select JDK in 'Use a project Specific JRE' option (JDK 1.5
  selected in this example) > click Next 

.. image:: images/chapt5_img05_Create_Java_Project.png
   :class: align-center

* Keep 'JAVA Settings' intact in next window. Project specific libraries can be 
  added here. (This described in detail in later part of document.)

.. image:: images/chapt5_img06_Create_Java_Project.png 
   :class: align-center

* Click Finish > Click on Yes in Open Associated Perspective pop up window. 

.. image:: images/chapt5_img07_Create_Java_Project.png 
   :class: align-center

This would create Project Google in Package Explorer/Navigator pane.

.. image:: images/chapt5_img08_Package_Explorer.png 
   :class: align-center

* Right click on src folder and click on New > Folder 

.. image:: images/chapt5_img09_Create_Com_Package.png 
   :class: align-center

Name this folder as com and click on Finish button.

* This should get com package insider src folder. 

.. image:: images/chapt5_img10_Create_Com_Package.png 
   :class: align-center

* Following the same steps create *core* folder inside *com*

.. image:: images/chapt5_img11_Create_Core_Package.png 
   :class: align-center

SelTestCase class can be kept inside *core* package. 

Create one more package inside *src* folder named *testscripts*. This is a 
place holder for test scripts. 

*Please notice this is about the organization of project and it entirely 
depends on individual's choice /  organization's standards. Test scripts 
package can further be segregated depending upon the project requirements.*

.. image:: images/chapt5_img12_Create_Test_Script_Package.png 
   :class: align-center

* Create a folder called lib inside project Google. Right click on Project name
  > New > Folder. This is a place holder for jar files to project (i.e. Selenium 
  client driver, selenium server etc) 

.. image:: images/chapt5_img13_Create_Library_Package.png
   :class: align-center

This would create lib folder in Project directory. 

.. image:: images/chapt5_img14_Create_Library_Package.png
   :class: align-center

* Right click on *lib* folder > Build Path > Configure build Path 

.. image:: images/chapt5_img15_Configure_Build_Path.png
   :class: align-center

* Under Library tab click on Add External Jars to navigate to directory where 
  jar files are saved. Select the jar files which are to be added and click on 
  Open button. 

.. image:: images/chapt5_img16_Configure_Build_Path.png
   :class: align-center

.. note: Here in Selenium Server, Selenium Java Client driver and TestNG jar 
   files have been added. TestNG is a testing framework which can be used to
   build selenium tests. As an alternative to TestNG, JUnit jar can be added to
   write selenium tests. 

After having added jar files click on OK button. 

.. image:: images/chapt5_img17_Configure_Build_Path.png
   :class: align-center

Added libraries would appear in Package Explorer as following:

.. image:: images/chapt5_img18_Configure_Build_Path.png
   :class: align-center
   
   
.. _configuring-selenium-RC-Intellij-reference:   

Configuring Selenium-RC With Intellij
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
**IntelliJ IDEA** is a commercial Java IDE by the company JetBrains. Intellij 
provides a set of integrated refactoring tools that allow programmers to 
quickly redesign their code. IntelliJ IDEA provides close integration with 
popular open source development tools such as CVS, Subversion, Apache Ant and 
JUnit.

Following lines describes configuration of Selenium-RC with IntelliJ 6.0
It should not be very different for higher version of intelliJ.

* Open a New Project in IntelliJ IDEA.

.. image:: images/chapt5_img28_Create_New_Project.png
   :class: align-center
     
* Provide name and location to Project.

.. image:: images/chapt5_img28_Name_Project.png
   :class: align-center
   
* Click Next and provide compiler output path.

.. image:: images/chapt5_img29_Compiler_Output.png
   :class: align-center 
   
* Click Next and select the JDK to be used.   

.. image:: images/chapt5_img30_JDK_Selection.png
   :class: align-center

* Click Next and select Single Module Project.

.. image:: images/chapt5_img31_Single_module.png
   :class: align-center
   
* Click Next and select Java module.

.. image:: images/chapt5_img32_Java_module.png
   :class: align-center


* Click Next and provide Module name and Module content root.

.. image:: images/chapt5_img33_Module_Root.png
   :class: align-center
   

* Click Next and select Source directory.   

.. image:: images/chapt5_img34_Src.png
   :class: align-center
   
* At last click Finish. This will launch the Project Pan.

.. image:: images/chapt5_img34_Project_Pan.png
   :class: align-center
   

**Adding Libraries to Project:**

* Click on *Settings* button in the Project Tool bar.

.. image:: images/chapt5_img35_Add_Lib.png
   :class: align-center

* Click on *Project Structure* in Settings pan. 

.. image:: images/chapt5_img36_Proj_Struct.png
   :class: align-center
   
* Select *Module* in Project Structure and browse to *Dependencies* tab.   

.. image:: images/chapt5_img37_Dependencies.png
   :class: align-center
   
* Click on Add button followed by click on Module Library.  

.. image:: images/chapt5_img38_Module_Library.png
   :class: align-center

* Browse to the Selenium directory and select selenium-java-client-driver.jar 
  and selenium-server.jar. (Multiple Jars can be selected b holding down the 
  control key.). 

.. image:: images/chapt5_img39_Library_Files.png
   :class: align-center
   
* Select both jar files in project pan and click on *Apply* button.   

.. image:: images/chapt5_img40_Add_Jars.png
   :class: align-center
   
   
* Now click ok on Project Structure followed by click on Close on 
  Project Settings pan. Added jars would appear in project Library as following.    

.. image:: images/chapt5_img41_Added_Jars.png
   :class: align-center
   
* Create the directory structure in src folder as following.   

.. image:: images/chapt5_img42_Project_Directories.png 
   :class: align-center
   
.. note:: This is not hard and fast convention and might very from project to
   project.


* Herein *core* contains the SelTestCase class which is used to create 
  Selenium object and fire up the browser. *testscripts* package contains 
  the test classes which extend the SelTestCase class. Hence extended 
  structure would look as following.
  
.. image:: images/chapt5_img43_Project_Structure.png
   :class: align-center 
   

.. _`downloads page`: http://seleniumhq.org/download/
