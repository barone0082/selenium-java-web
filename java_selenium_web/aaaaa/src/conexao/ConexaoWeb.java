package conexao;




import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;






public class ConexaoWeb {
	
	
@Before
	public WebDriver conexao()  {
		
		DesiredCapabilities capabilities = DesiredCapabilities.firefox();
		  
		capabilities.setCapability(CapabilityType.BROWSER_NAME, "firefox");
		

		System.setProperty("webdriver.gecko.driver", "C:\\Program Files\\FirefoxDriver\\geckodriver.exe");
		  
		 //it is used to initialize the IE driver
		 @SuppressWarnings("deprecation")
		WebDriver driver = new FirefoxDriver(capabilities);
		  
		 driver.manage().window().maximize();
		 	  
		return driver;
		 
		//(driver);
		// driver.quit();
		
		 
		 

		/*
		DesiredCapabilities capabilities = DesiredCapabilities.internetExplorer();
		  
		capabilities.setCapability(CapabilityType.BROWSER_NAME, "IE");
		capabilities.setCapability(InternetExplorerDriver.
		  INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS,true);


		System.setProperty("webdriver.ie.driver", "C:\\Program Files\\IEDriverServer\\IEDriverServer.exe");
		  
		 //it is used to initialize the IE driver
		 @SuppressWarnings("deprecation")
		WebDriver driver = new InternetExplorerDriver(capabilities);
		  
		 driver.manage().window().maximize();
		 	  
		 irSite(driver);
		// driver.quit();
		 
		 */

	}
	


}


