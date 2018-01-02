package testes;



import java.util.List;

import javax.xml.xpath.XPath;

import org.junit.Assert;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.thoughtworks.selenium.Wait;
import com.thoughtworks.selenium.webdriven.commands.DragAndDrop;
import com.thoughtworks.selenium.webdriven.commands.WaitForCondition;

import conexao.ConexaoWeb;

public class ex3 {
	
	
	@Test
	public void itensNoCarrinho(){
	ConexaoWeb auxdriver = new ConexaoWeb();
	
	WebDriver driver = auxdriver.conexao();
	WebDriverWait wait = new WebDriverWait (driver, 20);
	
		driver.get("http://eliasnogueira.com/arquivos_blog/selenium/desafio/3desafio/drag_and_drop/demo.php");
		
		WebElement img1 = driver.findElement(By.xpath("//div[@class='content drag-desired']/div[@class='product']/img[@alt='iPod']"));
		WebElement img2 = driver.findElement(By.xpath("//div[@class='content drag-desired']/div[@class='product']/img[@alt='iMac']"));
		WebElement img3 = driver.findElement(By.xpath("//div[@class='content drag-desired']/div[@class='product']/img[@alt='iPhone']"));
		WebElement img4 = driver.findElement(By.xpath("//div[@class='content drag-desired']/div[@class='product']/img[@alt='iPod Shuffle']"));
		WebElement img5 = driver.findElement(By.xpath("//div[@class='content drag-desired']/div[@class='product']/img[@alt='iPod Nano']"));
		WebElement img6 = driver.findElement(By.xpath("//div[@class='content drag-desired']/div[@class='product']/img[@alt='Apple TV']"));
		
		WebElement carrinho = driver.findElement(By.xpath("//div[@id='cart-icon']/img[@alt='shopping cart']"));
		
		//Declarando Actions
		
		Actions action = new Actions(driver);
		Action DragAndDrop=null;		

		 
		//Scroll
		JavascriptExecutor jse = (JavascriptExecutor)driver;
		jse.executeScript("scroll(0, 250);");
		
		//a��es
		DragAndDrop = action.clickAndHold(img1).moveToElement(carrinho).release().build();
		DragAndDrop.perform();
		wait.until(ExpectedConditions.textToBePresentInElement(driver.findElement(By.xpath("//div[@id='item-list']")),"iPod"));
		//String teste = driver.findElement(By.xpath("//img[@src='img/ajax_load.gif']")).getText();
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//img[@src='img/ajax_load.gif']")));
		
				


		
		DragAndDrop = action.clickAndHold(img2).moveToElement(carrinho).release().build();
		DragAndDrop.perform();
		wait.until(ExpectedConditions.textToBePresentInElement(driver.findElement(By.xpath("//div[@id='item-list']")),"iMac"));
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//img[@src='img/ajax_load.gif']")));
		
		DragAndDrop = action.clickAndHold(img3).moveToElement(carrinho).release().build();
		DragAndDrop.perform();
		wait.until(ExpectedConditions.textToBePresentInElement(driver.findElement(By.xpath("//div[@id='item-list']")),"iPhone"));
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//img[@src='img/ajax_load.gif']")));
		
		DragAndDrop = action.clickAndHold(img4).moveToElement(carrinho).release().build();
		DragAndDrop.perform();
		wait.until(ExpectedConditions.textToBePresentInElement(driver.findElement(By.xpath("//div[@id='item-list']")),"iPod Shuffle"));
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//img[@src='img/ajax_load.gif']")));
		
	
		driver.findElement(By.xpath("//a[class='button']")).click();
		
		
	//	Assert.eq
	}

}
