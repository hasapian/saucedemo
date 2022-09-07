require_relative 'common_page'
require_relative 'page_element'

class ProductsPage < CommonPage

  def initialize(driver)
    @add_to_cart_button = PageElement.new(:css, "#inventory_container button")
    @shopping_cart = PageElement.new(:id, "shopping_cart_container")
    @driver = driver
  end

  def add_all_products_to_cart
    add_to_carts_button = get_all_elements_for(@add_to_cart_button)
    add_to_carts_button.each do |elem|
      elem.click
    end
  end

  def navigate_to_cart
    get_single_element_for(@shopping_cart).click
  end

end
