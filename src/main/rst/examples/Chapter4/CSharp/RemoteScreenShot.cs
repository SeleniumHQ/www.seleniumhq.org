// Add this class to your code and use this instead of RemoteWebDriver
// You will then be able to cast it to ITakesScreenshot and call GetScreenshot

public class ScreenShotRemoteWebDriver : RemoteWebDriver, ITakesScreenshot
{
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
