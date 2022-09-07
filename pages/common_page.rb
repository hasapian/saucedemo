class CommonPage

  def initialize(driver)
    @wait = Selenium::WebDriver::Wait.new(:timeout => 7)
    @driver = driver
  end

  def get_single_element_for(element)
    @driver.find_element(element.tag, element.locator)
  end

  def get_all_elements_for(element)
    @driver.find_elements(element.tag, element.locator)
  end

end
