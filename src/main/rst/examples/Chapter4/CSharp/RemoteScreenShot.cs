// Add this class to your code and use this instead of RemoteWebDriver
// You will then be able to cast it to ITakesScreenshot and call GetScreenshot

public class ScreenShotRemoteWebDriver : RemoteWebDriver, ITakesScreenshot
{
       public ScreenShotRemoteWebDriver(Uri RemoteAdress, ICapabilities capabilities)
       : base(RemoteAdress, capabilities)
       {           
       }

       /// <summary>
       /// Gets a <see cref="Screenshot"/> object representing the image of the page on the screen.
       /// </summary>
       /// <returns>A <see cref="Screenshot"/> object containing the image.</returns>
       public Screenshot GetScreenshot()
       {
           // Get the screenshot as base64.
           Response screenshotResponse = this.Execute(DriverCommand.Screenshot, null);
           string base64 = screenshotResponse.Value.ToString();

           // ... and convert it.
           return new Screenshot(base64);
       }
}


// And then the usage would be:

ScreenShotRemoteWebDriver webDriver = new ScreenShotRemoteWebDriver(new Uri("http://127.0.0.1:4444/wd/hub"), DesiredCapabilities.Firefox());
// ... do stuff with webDriver
Screenshot ss = ((ITakesScreenshot)webDriver).GetScreenshot();
string screenshot = ss.AsBase64EncodedString;
byte[] screenshotAsByteArray = ss.AsByteArray;
ss.SaveAsFile(activeDir + TestSuiteName + "//" + FileNanme + imageFormat, ImageFormat.Jpeg);
