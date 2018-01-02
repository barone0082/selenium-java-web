package teste;


import static org.junit.Assert.assertEquals;



import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class teste {

	public static void main(String[] args) {
		DesiredCapabilities capabilities = DesiredCapabilities.firefox();
		  
		capabilities.setCapability(CapabilityType.BROWSER_NAME, "firefox");
		

		System.setProperty("webdriver.gecko.driver", "C:\\Program Files\\FirefoxDriver\\geckodriver.exe");
		  
		 //it is used to initialize the IE driver
		 @SuppressWarnings("deprecation")
		WebDriver driver = new FirefoxDriver(capabilities);
		  
		 driver.manage().window().maximize();
		 	  
		 irSite(driver);
		 

	}
	
public static void irSite(WebDriver driver) {
		
		driver.get("http://eliasnogueira.com/arquivos_blog/selenium/desafio/1desafio/");
		
	 waitPrimeiroNumero(driver);
		
	}
	
	
	public static void waitPrimeiroNumero (WebDriver driver){
		
		
		WebDriverWait wait = new WebDriverWait (driver, 15);
		WebElement primeiroNumero = wait.until(ExpectedConditions.elementToBeClickable(By.id("number1")));
		
		preencher(driver,primeiroNumero);
	}
	
	
	public static void preencher(WebDriver driver,WebElement primeiroNumero){
		
		String numero1 = primeiroNumero.getText();
		String numero2 = driver.findElement(By.id("number2")).getText();
			
			int total=0;
			
			total = Integer.parseInt(numero1+numero2);
			
			
			WebElement Campopreencher = driver.findElement(By.name("soma"));
			
			
			Campopreencher.click();
			Campopreencher.sendKeys(String.valueOf(total));
			
			driver.findElement(By.name("submit")).click();
			
			assertEquals("CORRETO",driver.findElement(By.id("resultado")).getText());
		
		
		
		
	}
	
	

}