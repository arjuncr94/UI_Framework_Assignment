from SeleniumLibrary import SeleniumLibrary
from robot.api.deco import keyword
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait

selenium = SeleniumLibrary()

@keyword("Search Multiple Products And Verify")
def add_product():
        driver = selenium.driver
        driver.maximize_window()

        product_list = ["Blue Top", "Men Tshirt"]

        for product in product_list:
            driver.find_element(By.NAME, "search").send_keys(product)
            driver.find_element(By.ID,"submit_search").click()
            try:
                 wait = WebDriverWait(driver,5)
                 view_product = wait.until(expected_conditions.presence_of_element_located((By.XPATH,"//a[text()='View Product']")))
                 view_product.click()
                 driver.find_element(By.XPATH,"//button[@type='button']").click()
                 driver.back()
                 print(f"{product} added to cart")
            except:
                print(f"{product} not found")


