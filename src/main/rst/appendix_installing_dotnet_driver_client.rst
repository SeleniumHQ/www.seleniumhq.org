.NET client driver configuration
--------------------------------

Note: the instructions below are outdated. NuGet is now the preferred method of integrating the Selenium WebDriver into .NET clients. Simply create a new Unit Test project and add the Selenium WebDriver NuGet package: https://www.nuget.org/packages/Selenium.WebDriver.

.. _configuring-selenium-RC-NET-reference:

.NET client Driver can be used with Microsoft Visual Studio. 
To Configure it with Visual Studio do as Following.

* Launch Visual Studio and navigate to File > New > Project.
  
  .. image:: images/chapt5_img01_Launch_VisualStudio.png
     :class: align-center
      
..

* Select Visual C# > Class Library > Name your project > Click on OK button.

  .. image:: images/chapt5_img02_CreateProject.png
     :class: align-center
  
..

* A Class (.cs) is created. Rename it as appropriate.

  .. image:: images/chapt5_img03_TestClassFile.png
    :class: align-center

..

* Under right hand pane of Solution Explorer right click on References > Add
  References. 

  .. image:: images/chapt5_img04_AddReference.png
    :class: align-center

..

*  Select following dll files - 
   nmock.dll, nunit.core.dll, nunit.framework.dll,ThoughtWorks.
   Selenium.Core.dll, ThoughtWorks.Selenium.IntegrationTests.dll,
   ThoughtWorks.Selenium.UnitTests.dll and click on Ok button
   
   .. image:: images/chapt5_img05_AddDlls.png
      :class: align-center
      
With This Visual Studio is ready for Selenium Test Cases.
