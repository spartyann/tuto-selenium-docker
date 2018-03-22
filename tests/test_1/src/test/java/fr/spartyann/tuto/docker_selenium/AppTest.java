package fr.spartyann.tuto.docker_selenium;

import static org.junit.Assert.assertTrue;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 * Unit test for simple App.
 */
public class AppTest
{

	/**
	 * Driver
	 */
	WebDriver driver;

	/**
     * Create the test case
     *
     * @param testName name of the test case
     */
    public AppTest() {	}


	/**
	 * Set up Test
	 * @throws MalformedURLException
	 */
	@Before
	public void setUp() throws MalformedURLException
	{
		// Define capabilities
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setBrowserName("firefox");

		// Instanciate Web Driver
		this.driver = new RemoteWebDriver(new URL("http://hub:4444/wd/hub"), capabilities);
		this.driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);
	}

	/**
	 * Close Test
	 */
	@After
	public void tearDown() 
	{
		driver.quit();
	}


    /**
     * Test Selenium
     * @throws InterruptedException
     */
	@Test
    public void testApp() throws InterruptedException
    {
		driver.get("http://myapp");
        
		Thread.sleep(1000);

		WebElement link = driver.findElement(By.cssSelector("#my_link"));
		link.click();

		WebElement title = driver.findElement(By.cssSelector("h1"));
		assertTrue(title.getText().trim().equals("My App - Page 2"));

		Thread.sleep(2000);
    }
}
