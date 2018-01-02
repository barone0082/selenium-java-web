package testes;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;

import conexao.ConexaoWeb;


public class ex1 {
	
	@Test
	public void preencher(){
		
		ConexaoWeb auxdriver = new ConexaoWeb();
		WebDriver driver = auxdriver.conexao();
		
		driver.get("http://eliasnogueira.com/arquivos_blog/selenium/desafio/1desafio/");
		String numero1 = driver.findElement(By.id("number1")).getText();
		String numero2 = driver.findElement(By.id("number2")).getText();
			
			int total=0;
			
			total = Integer.parseInt(numero1)+Integer.parseInt(numero2);
			
			
			WebElement Campopreencher = driver.findElement(By.name("soma"));
			
			
			Campopreencher.click();
			Campopreencher.sendKeys(String.valueOf(total));
			
			driver.findElement(By.name("submit")).click();
			
			assertEquals("CORRETO",driver.findElement(By.id("resultado")).getText());
//			ex2.alterarDados(driver);
	}
	
	
}
