using OpenQA.Selenium.Firefox;
using OpenQA.Selenium;

class GoogleSuggest
{

    static void Main(string[] args)
    {
        IWebDriver driver = new FirefoxDriver();

        //Notice navigation is slightly different than the Java version
        //This is because 'get' is a keyword in C#
        driver.Navigate().GoToUrl("http://www.google.com/");
        IWebElement query = driver.FindElement(By.Name("q"));
        query.SendKeys("Cheese");
        System.Console.WriteLine("Page title is: " + driver.Title);
        driver.Quit();
    }

}